


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/widgets/news_tile.dart';
import 'package:news/widgets/webview.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
            (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => WebViewScreen(webView: articles[index].webViewUrl),
                ));
              },
              child: NewsTile(
                articleModel: articles[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
