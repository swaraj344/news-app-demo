import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/Infrastructure/news/i_news_services.dart';
import 'package:news_app/domain/news/news.dart';

import '../../Infrastructure/news/news_failure.dart';

part 'breaking_news_event.dart';
part 'breaking_news_state.dart';
part 'breaking_news_bloc.freezed.dart';

@injectable
class BreakingNewsBloc extends Bloc<BreakingNewsEvent, BreakingNewsState> {
  final INewsServices _newsServices;
  BreakingNewsBloc(this._newsServices) : super(BreakingNewsState.initial()) {
    on<BreakingNewsEvent>((event, emit) async {
      event.map(
        loaded: (v) {
          v.res.fold(
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
        started: (_) async {
          emit(state.copyWith(isLoading: true));
          final news = await _newsServices.getBreakingNews();
          add(BreakingNewsEvent.loaded(news));
        },
        refresh: (_) => {},
      );
    });
  }
}
