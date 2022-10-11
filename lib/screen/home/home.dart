import 'package:flutter/material.dart';
import 'package:rick_and_morty/screen/home/character_appbar.dart';
import 'character_sliver_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          const CharacterAppBar(),
          SliverToBoxAdapter(
            child: CharacterSliverGrid(),
          ),
        ],
      ),
    
    );
  }
}
