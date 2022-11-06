import 'package:flutter/material.dart';
import 'package:news_app/presentation/home/news_details.dart';

import '../../domain/news/news.dart';

class NewsCard extends StatelessWidget {
  final News news;
  const NewsCard({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => NewsDetailsBottomSheet(news: news),
            isScrollControlled: true,
            enableDrag: true,
          );
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Text(
                          news.title ?? "NA",
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              news.author ?? "NA",
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                          const Text(" - "),
                          Text(
                            news.publishedAt?.toString().split(" ").first ??
                                "NA",
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(15),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: news.urlToImage == null
                        ? const Center(
                            child: Text("NA"),
                          )
                        : Image.network(
                            news.urlToImage!,
                            errorBuilder: (context, error, stackTrace) =>
                                const Center(child: Icon(Icons.error)),
                            fit: BoxFit.cover,
                          ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
