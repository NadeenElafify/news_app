import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/nwesListView.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future=NewsServices().getGeneralNews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<ArticleModel>>(
      builder: (context, snapshot) {
       if(snapshot.hasData){
         return NewsListView(articles: snapshot.data!);
       }else if(snapshot.hasError){
        return const SliverToBoxAdapter(
                child: Text('opss there was an error try later'),
              );
       }else{
        return const SliverToBoxAdapter(
             child: Center(child: CircularProgressIndicator()));
       }
      },
      future:future ,
    );
  }
}
