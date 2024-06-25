import 'package:flutter/material.dart';
import 'package:news_app0/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModel.image ?? 'https://media.istockphoto.com/id/1475336254/photo/white-paper-texture-background-material-cardboard-texture-old-vintage-blank-page-abstract.webp?b=1&s=170667a&w=0&k=20&c=p3kiv_HzzsN6gVLhQy-QKd4ZC0G5HFACKX_gfXfVPKI=' ,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
            )
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            articleModel.description != null ? articleModel.description! : '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}
