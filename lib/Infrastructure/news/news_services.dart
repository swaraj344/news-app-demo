import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/domain/news/news.dart';

import 'package:news_app/Infrastructure/news/news_failure.dart';

import 'package:dartz/dartz.dart';

import 'i_news_services.dart';

@LazySingleton(as: INewsServices)
class NewsServices extends INewsServices {
  final String _apiKey = "ce7fd92d8266452aa25a76f16f7c58a1";
  final String _baseUrl = "https://newsapi.org/v2/";
  final _dio = Dio();
  @override
  Future<Either<NewsFailure, List<News>>> getBreakingNews() async {
    try {
      final res = await _dio.get("$_baseUrl/top-headlines", queryParameters: {
        "apiKey": _apiKey,
        "country": "in",
        "pageSize": 100,
      });

      final List<News> news =
          res.data['articles'].map<News>((e) => News.fromJson(e)).toList();
      print(news.length);
      return right(news);
    } on Exception catch (e) {
      debugPrint(e.toString());
      return left(const NewsFailure.serverError());
    } catch (e) {
      print(e);
      return left(const NewsFailure.unExpectedError());
    }
  }

  @override
  Future<Either<NewsFailure, List<News>>> searchNews(
      String searchString) async {
    try {
      final res = await _dio.get("$_baseUrl/everything", queryParameters: {
        "apiKey": _apiKey,
        "sortBy": "popularity",
        "from": "2022-10-05",
        "q": searchString,
      });

      final List<News> news =
          res.data['articles'].map<News>((e) => News.fromJson(e)).toList();
      print(news.length);
      return right(news);
    } on Exception catch (e) {
      debugPrint(e.toString());
      return left(const NewsFailure.serverError());
    } catch (e) {
      print(e);
      return left(const NewsFailure.unExpectedError());
    }
  }
}
