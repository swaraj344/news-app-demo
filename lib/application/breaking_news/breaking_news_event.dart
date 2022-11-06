part of 'breaking_news_bloc.dart';

@freezed
class BreakingNewsEvent with _$BreakingNewsEvent {
  const factory BreakingNewsEvent.started() = _Started;
  const factory BreakingNewsEvent.refresh() = _Refresh;
  const factory BreakingNewsEvent.loaded(Either<NewsFailure, List<News>> res) =
      _Loaded;
}
