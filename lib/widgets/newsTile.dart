import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.article});
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: article.image != null
                ? Image.network(
                    article.image! ,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  )
                : Container(
                    height: 200,
                    child: const Center(child: Text("image not avilable")),
                  )),
        const SizedBox(
          height: 12,
        ),
         Text(
          article.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style:const  TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black87),
        ),
        const SizedBox(
          height: 8,
        ),
         Text(
          article.subTitle!=null?article.subTitle!:"",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style:const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 15, color: Colors.grey),
        )
      ],
    );
  }
}
