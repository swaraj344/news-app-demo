// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/breaking_news/breaking_news_bloc.dart' as _i6;
import 'application/search_news/search_news_bloc.dart' as _i5;
import 'Infrastructure/news/i_news_services.dart' as _i3;
import 'Infrastructure/news/news_services.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.INewsServices>(() => _i4.NewsServices());
  gh.factory<_i5.SearchNewsBloc>(
      () => _i5.SearchNewsBloc(get<_i3.INewsServices>()));
  gh.factory<_i6.BreakingNewsBloc>(
      () => _i6.BreakingNewsBloc(get<_i3.INewsServices>()));
  return get;
}
