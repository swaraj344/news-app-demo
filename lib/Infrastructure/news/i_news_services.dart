import 'package:dartz/dartz.dart';
// import 'package:injectable/injectable.dart';
import 'package:news_app/Infrastructure/news/news_failure.dart';

import '../../domain/news/news.dart';

abstract class INewsServices {
  Future<Either<NewsFailure, List<News>>> getBreakingNews();
  Future<Either<NewsFailure, List<News>>> searchNews(String searchString);
}
