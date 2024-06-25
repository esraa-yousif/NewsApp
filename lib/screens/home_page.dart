import 'package:flutter/material.dart';
import 'package:news_app0/widgets/card_list_view.dart';
import 'package:news_app0/widgets/news_list_view_builder.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title:
        const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
          Text('News ',
          style: TextStyle(
            color: Colors.black,
          ),),
          Text('Cloud',
          style: TextStyle(
            color: Colors.orange
          ),)
        ],
        )
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CardListView()),
          const NewsListViewBuilder(category: 'general',),
        ],
      )
    );
  }
}
