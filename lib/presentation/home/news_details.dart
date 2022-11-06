import 'package:flutter/material.dart';
import 'package:news_app/domain/news/news.dart';

class NewsDetailsBottomSheet extends StatelessWidget {
  final News news;
  const NewsDetailsBottomSheet({Key? key, required this.news})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              news.urlToImage == null
                  ? const Center(
                      // child: Text("NA"),
                      )
                  : Image.network(
                      news.urlToImage!,
                      errorBuilder: (context, error, stackTrace) =>
                          const Center(child: Icon(Icons.error)),
                      fit: BoxFit.cover,
                    ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  children: [
                    Text(
                      news.title ?? "NA",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const Divider(),
                    Text(
                      news.description ?? "NA",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      news.content ?? "NA",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
