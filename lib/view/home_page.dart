import 'package:flutter/material.dart';
import 'package:news_api_project/view/categories/apple_widget.dart';
import 'package:news_api_project/view/categories/article_widget.dart';
import 'package:news_api_project/view/categories/business_widget.dart';
import 'package:news_api_project/view/categories/tech_widget.dart';
import 'package:news_api_project/view/categories/tesla_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          tabs: const [
            Tab(text: 'Apple'),
            Tab(text: 'Tesla'),
            Tab(text: 'Business'),
            Tab(text: 'Technology'),
            Tab(text: 'Articles'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _widgets,
      ),
    );
  }

  final List<Widget> _widgets = [
    const AppleWidget(),
    const TeslaWidget(),
    const BusinessWidget(),
    const TechWidget(),
    const ArticleWidget(),
  ];
}
