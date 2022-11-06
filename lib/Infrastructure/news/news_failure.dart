import 'package:freezed_annotation/freezed_annotation.dart';
part 'news_failure.freezed.dart';

@freezed
class NewsFailure with _$NewsFailure {
  const factory NewsFailure.serverError({String? errorMessage}) = _ServerError;
  const factory NewsFailure.unExpectedError() = _UnExpectedError;
}
