import 'package:flutter/cupertino.dart';
import 'package:news_app0/models/article_model.dart';
import 'package:news_app0/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});

 final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate:
    SliverChildBuilderDelegate(
        childCount: articles.length,
            (context, index) {
          return NewsTile(
            articleModel: articles[index],
          );
        }
    ));
  }
}

// ListView.builder(
// itemCount: 10,
// itemBuilder: (context, index){
// return const NewsTile();
// });