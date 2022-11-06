import 'package:flutter/material.dart';
import 'search_news.dart';

import 'breaking_news.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
            child: TabBar(
                // indicatorPadding: EdgeInsets.all(40),

                indicator: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(15)),
                labelColor: Colors.white,
                unselectedLabelColor: Theme.of(context).primaryColor,
                tabs: [
                  Tab(
                    icon: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.newspaper_sharp),
                        SizedBox(
                          width: 5,
                        ),
                        Text("breaking news")
                      ],
                    ),
                    iconMargin: EdgeInsets.zero,
                  ),
                  Tab(
                    icon: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.search,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Search news")
                      ],
                    ),
                    iconMargin: EdgeInsets.zero,
                  ),
                ]),
          ),
        ),
        appBar: AppBar(
          title: const Text('News App'),
        ),
        body: TabBarView(children: [
          BreakingNews(),
          SearchNews(),
        ]),
      ),
    );
  }
}
