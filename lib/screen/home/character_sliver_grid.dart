import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty/controller/getx_controller.dart';
import 'package:rick_and_morty/util/app_colors.dart';

import 'character_card.dart';

class CharacterSliverGrid extends StatelessWidget {
  CharacterSliverGrid({
    Key? key,
  }) : super(key: key);
  final RickAndMortyController rickAndMortyController =
      Get.put(RickAndMortyController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (rickAndMortyController.isLoading.value) {
        return Center(
            child: CircularProgressIndicator(
          color: AppColors.secondaryTeal,
        ));
      } else
        return SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.5,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return CharacterCard(
                  index: index,
                  character: rickAndMortyController.characterList[index],
                );
              },
              childCount: rickAndMortyController.characterList.length,
            ),
          ),
        );
    });
  }
}
