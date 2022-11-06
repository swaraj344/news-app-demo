// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchNewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchString) searchStringChange,
    required TResult Function(String searchString) getNewsBySearch,
    required TResult Function(Either<NewsFailure, List<News>> news) newsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchString)? searchStringChange,
    TResult? Function(String searchString)? getNewsBySearch,
    TResult? Function(Either<NewsFailure, List<News>> news)? newsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchString)? searchStringChange,
    TResult Function(String searchString)? getNewsBySearch,
    TResult Function(Either<NewsFailure, List<News>> news)? newsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStringChange value) searchStringChange,
    required TResult Function(_GetNewsBySearch value) getNewsBySearch,
    required TResult Function(_Newsloaded value) newsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStringChange value)? searchStringChange,
    TResult? Function(_GetNewsBySearch value)? getNewsBySearch,
    TResult? Function(_Newsloaded value)? newsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStringChange value)? searchStringChange,
    TResult Function(_GetNewsBySearch value)? getNewsBySearch,
    TResult Function(_Newsloaded value)? newsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchNewsEventCopyWith<$Res> {
  factory $SearchNewsEventCopyWith(
          SearchNewsEvent value, $Res Function(SearchNewsEvent) then) =
      _$SearchNewsEventCopyWithImpl<$Res, SearchNewsEvent>;
}

/// @nodoc
class _$SearchNewsEventCopyWithImpl<$Res, $Val extends SearchNewsEvent>
    implements $SearchNewsEventCopyWith<$Res> {
  _$SearchNewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SearchStringChangeCopyWith<$Res> {
  factory _$$_SearchStringChangeCopyWith(_$_SearchStringChange value,
          $Res Function(_$_SearchStringChange) then) =
      __$$_SearchStringChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchString});
}

/// @nodoc
class __$$_SearchStringChangeCopyWithImpl<$Res>
    extends _$SearchNewsEventCopyWithImpl<$Res, _$_SearchStringChange>
    implements _$$_SearchStringChangeCopyWith<$Res> {
  __$$_SearchStringChangeCopyWithImpl(
      _$_SearchStringChange _value, $Res Function(_$_SearchStringChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchString = null,
  }) {
    return _then(_$_SearchStringChange(
      null == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchStringChange
    with DiagnosticableTreeMixin
    implements _SearchStringChange {
  const _$_SearchStringChange(this.searchString);

  @override
  final String searchString;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchNewsEvent.searchStringChange(searchString: $searchString)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchNewsEvent.searchStringChange'))
      ..add(DiagnosticsProperty('searchString', searchString));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchStringChange &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStringChangeCopyWith<_$_SearchStringChange> get copyWith =>
      __$$_SearchStringChangeCopyWithImpl<_$_SearchStringChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchString) searchStringChange,
    required TResult Function(String searchString) getNewsBySearch,
    required TResult Function(Either<NewsFailure, List<News>> news) newsLoaded,
  }) {
    return searchStringChange(searchString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchString)? searchStringChange,
    TResult? Function(String searchString)? getNewsBySearch,
    TResult? Function(Either<NewsFailure, List<News>> news)? newsLoaded,
  }) {
    return searchStringChange?.call(searchString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchString)? searchStringChange,
    TResult Function(String searchString)? getNewsBySearch,
    TResult Function(Either<NewsFailure, List<News>> news)? newsLoaded,
    required TResult orElse(),
  }) {
    if (searchStringChange != null) {
      return searchStringChange(searchString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStringChange value) searchStringChange,
    required TResult Function(_GetNewsBySearch value) getNewsBySearch,
    required TResult Function(_Newsloaded value) newsLoaded,
  }) {
    return searchStringChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStringChange value)? searchStringChange,
    TResult? Function(_GetNewsBySearch value)? getNewsBySearch,
    TResult? Function(_Newsloaded value)? newsLoaded,
  }) {
    return searchStringChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStringChange value)? searchStringChange,
    TResult Function(_GetNewsBySearch value)? getNewsBySearch,
    TResult Function(_Newsloaded value)? newsLoaded,
    required TResult orElse(),
  }) {
    if (searchStringChange != null) {
      return searchStringChange(this);
    }
    return orElse();
  }
}

abstract class _SearchStringChange implements SearchNewsEvent {
  const factory _SearchStringChange(final String searchString) =
      _$_SearchStringChange;

  String get searchString;
  @JsonKey(ignore: true)
  _$$_SearchStringChangeCopyWith<_$_SearchStringChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetNewsBySearchCopyWith<$Res> {
  factory _$$_GetNewsBySearchCopyWith(
          _$_GetNewsBySearch value, $Res Function(_$_GetNewsBySearch) then) =
      __$$_GetNewsBySearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchString});
}

/// @nodoc
class __$$_GetNewsBySearchCopyWithImpl<$Res>
    extends _$SearchNewsEventCopyWithImpl<$Res, _$_GetNewsBySearch>
    implements _$$_GetNewsBySearchCopyWith<$Res> {
  __$$_GetNewsBySearchCopyWithImpl(
      _$_GetNewsBySearch _value, $Res Function(_$_GetNewsBySearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchString = null,
  }) {
    return _then(_$_GetNewsBySearch(
      null == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetNewsBySearch
    with DiagnosticableTreeMixin
    implements _GetNewsBySearch {
  const _$_GetNewsBySearch(this.searchString);

  @override
  final String searchString;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchNewsEvent.getNewsBySearch(searchString: $searchString)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchNewsEvent.getNewsBySearch'))
      ..add(DiagnosticsProperty('searchString', searchString));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetNewsBySearch &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetNewsBySearchCopyWith<_$_GetNewsBySearch> get copyWith =>
      __$$_GetNewsBySearchCopyWithImpl<_$_GetNewsBySearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchString) searchStringChange,
    required TResult Function(String searchString) getNewsBySearch,
    required TResult Function(Either<NewsFailure, List<News>> news) newsLoaded,
  }) {
    return getNewsBySearch(searchString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchString)? searchStringChange,
    TResult? Function(String searchString)? getNewsBySearch,
    TResult? Function(Either<NewsFailure, List<News>> news)? newsLoaded,
  }) {
    return getNewsBySearch?.call(searchString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchString)? searchStringChange,
    TResult Function(String searchString)? getNewsBySearch,
    TResult Function(Either<NewsFailure, List<News>> news)? newsLoaded,
    required TResult orElse(),
  }) {
    if (getNewsBySearch != null) {
      return getNewsBySearch(searchString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStringChange value) searchStringChange,
    required TResult Function(_GetNewsBySearch value) getNewsBySearch,
    required TResult Function(_Newsloaded value) newsLoaded,
  }) {
    return getNewsBySearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStringChange value)? searchStringChange,
    TResult? Function(_GetNewsBySearch value)? getNewsBySearch,
    TResult? Function(_Newsloaded value)? newsLoaded,
  }) {
    return getNewsBySearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStringChange value)? searchStringChange,
    TResult Function(_GetNewsBySearch value)? getNewsBySearch,
    TResult Function(_Newsloaded value)? newsLoaded,
    required TResult orElse(),
  }) {
    if (getNewsBySearch != null) {
      return getNewsBySearch(this);
    }
    return orElse();
  }
}

abstract class _GetNewsBySearch implements SearchNewsEvent {
  const factory _GetNewsBySearch(final String searchString) =
      _$_GetNewsBySearch;

  String get searchString;
  @JsonKey(ignore: true)
  _$$_GetNewsBySearchCopyWith<_$_GetNewsBySearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewsloadedCopyWith<$Res> {
  factory _$$_NewsloadedCopyWith(
          _$_Newsloaded value, $Res Function(_$_Newsloaded) then) =
      __$$_NewsloadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<NewsFailure, List<News>> news});
}

/// @nodoc
class __$$_NewsloadedCopyWithImpl<$Res>
    extends _$SearchNewsEventCopyWithImpl<$Res, _$_Newsloaded>
    implements _$$_NewsloadedCopyWith<$Res> {
  __$$_NewsloadedCopyWithImpl(
      _$_Newsloaded _value, $Res Function(_$_Newsloaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
  }) {
    return _then(_$_Newsloaded(
      null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as Either<NewsFailure, List<News>>,
    ));
  }
}

/// @nodoc

class _$_Newsloaded with DiagnosticableTreeMixin implements _Newsloaded {
  const _$_Newsloaded(this.news);

  @override
  final Either<NewsFailure, List<News>> news;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchNewsEvent.newsLoaded(news: $news)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchNewsEvent.newsLoaded'))
      ..add(DiagnosticsProperty('news', news));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Newsloaded &&
            (identical(other.news, news) || other.news == news));
  }

  @override
  int get hashCode => Object.hash(runtimeType, news);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsloadedCopyWith<_$_Newsloaded> get copyWith =>
      __$$_NewsloadedCopyWithImpl<_$_Newsloaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchString) searchStringChange,
    required TResult Function(String searchString) getNewsBySearch,
    required TResult Function(Either<NewsFailure, List<News>> news) newsLoaded,
  }) {
    return newsLoaded(news);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchString)? searchStringChange,
    TResult? Function(String searchString)? getNewsBySearch,
    TResult? Function(Either<NewsFailure, List<News>> news)? newsLoaded,
  }) {
    return newsLoaded?.call(news);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchString)? searchStringChange,
    TResult Function(String searchString)? getNewsBySearch,
    TResult Function(Either<NewsFailure, List<News>> news)? newsLoaded,
    required TResult orElse(),
  }) {
    if (newsLoaded != null) {
      return newsLoaded(news);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchStringChange value) searchStringChange,
    required TResult Function(_GetNewsBySearch value) getNewsBySearch,
    required TResult Function(_Newsloaded value) newsLoaded,
  }) {
    return newsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchStringChange value)? searchStringChange,
    TResult? Function(_GetNewsBySearch value)? getNewsBySearch,
    TResult? Function(_Newsloaded value)? newsLoaded,
  }) {
    return newsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchStringChange value)? searchStringChange,
    TResult Function(_GetNewsBySearch value)? getNewsBySearch,
    TResult Function(_Newsloaded value)? newsLoaded,
    required TResult orElse(),
  }) {
    if (newsLoaded != null) {
      return newsLoaded(this);
    }
    return orElse();
  }
}

abstract class _Newsloaded implements SearchNewsEvent {
  const factory _Newsloaded(final Either<NewsFailure, List<News>> news) =
      _$_Newsloaded;

  Either<NewsFailure, List<News>> get news;
  @JsonKey(ignore: true)
  _$$_NewsloadedCopyWith<_$_Newsloaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchNewsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get searchString => throw _privateConstructorUsedError;
  List<News> get newsList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchNewsStateCopyWith<SearchNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchNewsStateCopyWith<$Res> {
  factory $SearchNewsStateCopyWith(
          SearchNewsState value, $Res Function(SearchNewsState) then) =
      _$SearchNewsStateCopyWithImpl<$Res, SearchNewsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String errorMessage,
      String searchString,
      List<News> newsList});
}

/// @nodoc
class _$SearchNewsStateCopyWithImpl<$Res, $Val extends SearchNewsState>
    implements $SearchNewsStateCopyWith<$Res> {
  _$SearchNewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = null,
    Object? searchString = null,
    Object? newsList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      searchString: null == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
      newsList: null == newsList
          ? _value.newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as List<News>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchNewsStateCopyWith<$Res>
    implements $SearchNewsStateCopyWith<$Res> {
  factory _$$_SearchNewsStateCopyWith(
          _$_SearchNewsState value, $Res Function(_$_SearchNewsState) then) =
      __$$_SearchNewsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String errorMessage,
      String searchString,
      List<News> newsList});
}

/// @nodoc
class __$$_SearchNewsStateCopyWithImpl<$Res>
    extends _$SearchNewsStateCopyWithImpl<$Res, _$_SearchNewsState>
    implements _$$_SearchNewsStateCopyWith<$Res> {
  __$$_SearchNewsStateCopyWithImpl(
      _$_SearchNewsState _value, $Res Function(_$_SearchNewsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = null,
    Object? searchString = null,
    Object? newsList = null,
  }) {
    return _then(_$_SearchNewsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      searchString: null == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
      newsList: null == newsList
          ? _value._newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as List<News>,
    ));
  }
}

/// @nodoc

class _$_SearchNewsState
    with DiagnosticableTreeMixin
    implements _SearchNewsState {
  const _$_SearchNewsState(
      {required this.isLoading,
      required this.hasError,
      required this.errorMessage,
      required this.searchString,
      required final List<News> newsList})
      : _newsList = newsList;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String errorMessage;
  @override
  final String searchString;
  final List<News> _newsList;
  @override
  List<News> get newsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newsList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchNewsState(isLoading: $isLoading, hasError: $hasError, errorMessage: $errorMessage, searchString: $searchString, newsList: $newsList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchNewsState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('hasError', hasError))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('searchString', searchString))
      ..add(DiagnosticsProperty('newsList', newsList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchNewsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString) &&
            const DeepCollectionEquality().equals(other._newsList, _newsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      errorMessage,
      searchString,
      const DeepCollectionEquality().hash(_newsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchNewsStateCopyWith<_$_SearchNewsState> get copyWith =>
      __$$_SearchNewsStateCopyWithImpl<_$_SearchNewsState>(this, _$identity);
}

abstract class _SearchNewsState implements SearchNewsState {
  const factory _SearchNewsState(
      {required final bool isLoading,
      required final bool hasError,
      required final String errorMessage,
      required final String searchString,
      required final List<News> newsList}) = _$_SearchNewsState;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String get errorMessage;
  @override
  String get searchString;
  @override
  List<News> get newsList;
  @override
  @JsonKey(ignore: true)
  _$$_SearchNewsStateCopyWith<_$_SearchNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}
