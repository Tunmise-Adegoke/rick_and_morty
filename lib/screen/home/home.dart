import 'package:flutter/material.dart';
import 'package:rick_and_morty/screen/home/character_appbar.dart';

import 'character_sliver_grid.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        CharacterAppBar(),
        // CharacterSliverGrid(),
        // SliverToBoxAdapter(
        //   child: CharacterAppBar(),
        // ),
        SliverToBoxAdapter(
          child: CharacterSliverGrid(),
        ),
      ],
    ));
  }
}
