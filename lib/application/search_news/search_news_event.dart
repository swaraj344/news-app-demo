part of 'search_news_bloc.dart';

@freezed
class SearchNewsEvent with _$SearchNewsEvent {
  // const factory SearchNewsEvent.started() = _Started;
  const factory SearchNewsEvent.searchStringChange(String searchString) =
      _SearchStringChange;
  const factory SearchNewsEvent.getNewsBySearch(String searchString) =
      _GetNewsBySearch;
  const factory SearchNewsEvent.newsLoaded(
      Either<NewsFailure, List<News>> news) = _Newsloaded;
}
