part of 'breaking_news_bloc.dart';

@freezed
class BreakingNewsState with _$BreakingNewsState {
  const factory BreakingNewsState({
    required bool isLoading,
    required bool hasError,
    required String errorMessage,
    required List<News> newsList,
  }) = _BreakingNewsState;

  factory BreakingNewsState.initial() => const BreakingNewsState(
        errorMessage: "",
        hasError: false,
        isLoading: false,
        newsList: [],
      );
}
