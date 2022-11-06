import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/domain/core/debouncer.dart';

import '../../application/search_news/search_news_bloc.dart';
import '../widget/news_card.dart';

class SearchNews extends StatelessWidget {
  SearchNews({
    Key? key,
  }) : super(key: key);
  final _debouncer = Debouncer(
    milliseconds: 600,
  );

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchNewsBloc, SearchNewsState>(
      listener: (context, state) {
        if (state.hasError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text(state.errorMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                initialValue: state.searchString,
                onChanged: (value) {
                  context.read<SearchNewsBloc>().add(
                        SearchNewsEvent.searchStringChange(value),
                      );
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    isDense: true,
                    hintText: "Search news...",
                    prefixIcon: const Icon(Icons.search)),
              ),
              const Divider(
                thickness: 1.5,
              ),
              state.isLoading
                  ? const Center(
                      child: LinearProgressIndicator(),
                    )
                  : state.newsList.isEmpty
                      ? const Center(
                          child: Text("No data found!!"),
                        )
                      : Expanded(
                          child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: state.newsList.length,
                              itemBuilder: (context, index) => NewsCard(
                                    news: state.newsList[index],
                                  )),
                        )
            ],
          ),
        );
      },
    );
  }
}
