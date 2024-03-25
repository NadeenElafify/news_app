
import 'package:flutter/material.dart';
import 'package:news_app/widgets/CategoriesListView.dart';
import 'package:news_app/widgets/newes_list_view_builder.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Row(mainAxisSize: MainAxisSize.min, children: [
          Text(
            'News',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            'Cloud',
            style: TextStyle(color: Colors.orange),
          ),
        ]),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
          slivers:[
             SliverToBoxAdapter(child: CategoriesListView()),
             SliverToBoxAdapter(child: SizedBox(height: 32)),
            NewsListViewBuilder(category: 'general',),
          ],
        ),
      ),
    );
  }
}


