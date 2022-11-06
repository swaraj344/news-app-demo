part of 'search_news_bloc.dart';

@freezed
class SearchNewsState with _$SearchNewsState {
  const factory SearchNewsState({
    required bool isLoading,
    required bool hasError,
    required String errorMessage,
    required String searchString,
    required List<News> newsList,
  }) = _SearchNewsState;

  factory SearchNewsState.initial() => const SearchNewsState(
      isLoading: false,
      hasError: false,
      errorMessage: "",
      searchString: "",
      newsList: []);
}
