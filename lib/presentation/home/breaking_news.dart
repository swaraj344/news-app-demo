import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/application/breaking_news/breaking_news_bloc.dart';
import 'package:news_app/domain/news/news.dart';

import '../widget/news_card.dart';

class BreakingNews extends StatelessWidget {
  const BreakingNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Breaking news",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),
          BlocConsumer<BreakingNewsBloc, BreakingNewsState>(
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
              return Expanded(
                child: state.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.newsList.length,
                        itemBuilder: (context, index) => NewsCard(
                              news: state.newsList[index],
                            )),
              );
            },
          )
        ],
      ),
    );
  }
}
