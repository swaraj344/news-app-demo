import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/Infrastructure/news/news_services.dart';
import 'package:news_app/application/breaking_news/breaking_news_bloc.dart';
import 'package:news_app/application/search_news/search_news_bloc.dart';

import 'injection.dart';
import 'presentation/home/home.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => GetIt.I<BreakingNewsBloc>()
              ..add(const BreakingNewsEvent.started()),
          ),
          BlocProvider(
            create: (_) => GetIt.I<SearchNewsBloc>(),
          )
        ],
        child: MaterialApp(
          title: "News App",
          theme: ThemeData(
            primaryColor: Colors.indigoAccent,
            appBarTheme: const AppBarTheme(color: Colors.indigo),
          ),
          home: const Home(),
        ));
  }
}
