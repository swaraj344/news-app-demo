import 'package:freezed_annotation/freezed_annotation.dart';
part 'news.freezed.dart';
part 'news.g.dart';

@freezed
class News with _$News {
  const factory News({
    required String? author,
    required String? title,
    required String? description,
    required String? url,
    required String? urlToImage,
    required String? content,
    required DateTime? publishedAt,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}
