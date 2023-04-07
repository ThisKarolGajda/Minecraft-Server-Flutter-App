import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'icon_and_stats.dart';
import 'nav_bar.dart';
import 'news_bar.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          AppBarWidget(size: size),
          const Spacer(),
          ServerIconAndStats(size: size),
          const Spacer(),
          ScrollableNews(size: size),
          NavBar(size: size),
        ],
      ),
    );
  }
}
