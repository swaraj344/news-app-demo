import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/Infrastructure/news/i_news_services.dart';
import 'package:news_app/domain/core/debouncer.dart';

import '../../Infrastructure/news/news_failure.dart';
import '../../domain/news/news.dart';

part 'search_news_event.dart';
part 'search_news_state.dart';
part 'search_news_bloc.freezed.dart';

@injectable
class SearchNewsBloc extends Bloc<SearchNewsEvent, SearchNewsState> {
  final INewsServices _newsServices;
  final Debouncer _debouncer = Debouncer(milliseconds: 600);
  SearchNewsBloc(this._newsServices) : super(SearchNewsState.initial()) {
    on<SearchNewsEvent>(
      (event, emit) {
        event.map(
          newsLoaded: (e) {
            e.news.fold(
              (l) => emit(
                state.copyWith(
                  isLoading: false,
                  hasError: true,
                  errorMessage: l.map(
                    serverError: (e) => "Server error: ${e.errorMessage}",
                    unExpectedError: (e) => "Unexpected error",
                  ),
                  newsList: [],
                ),
              ),
              (r) => emit(
                state.copyWith(
                  isLoading: false,
                  hasError: false,
                  errorMessage: "",
                  newsList: r,
                ),
              ),
            );
          },
          getNewsBySearch: (e) async {
            emit(state.copyWith(
              isLoading: true,
              errorMessage: "",
              searchString: e.searchString,
              hasError: false,
            ));
            final news = await _newsServices.searchNews(e.searchString);
            add(SearchNewsEvent.newsLoaded(news));
          },
          searchStringChange: (e) {
            emit(state.copyWith(
              errorMessage: "",
              searchString: e.searchString,
              hasError: false,
            ));

            _debouncer.run(
              () {
                // ignore: avoid_print
                print(state.searchString);
                if (e.searchString.isNotEmpty) {
                  add(SearchNewsEvent.getNewsBySearch(e.searchString));
                }
              },
            );
          },
        );
      },
    );
  }
}
