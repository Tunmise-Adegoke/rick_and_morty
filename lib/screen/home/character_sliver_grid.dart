import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty/controller/episode_controller.dart';
import 'package:rick_and_morty/controller/location_controller.dart';
import 'package:rick_and_morty/util/app_colors.dart';
import 'package:sizer/sizer.dart';
import '../../controller/character_controller.dart';
import 'character_card.dart';

class CharacterSliverGrid extends StatelessWidget {
  CharacterSliverGrid({
    Key? key,
  }) : super(key: key);

  final CharacterController characterController =
      Get.put(CharacterController());
  final LocationController locationController = Get.put(LocationController());
  final EpisodeController episodesController = Get.put(EpisodeController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (characterController.isLoading.value) {
        return const Center(
            child: CircularProgressIndicator(
          color: AppColors.secondaryTeal,
        ));
      } else {
        return MasonryGridView.count(
          padding: EdgeInsets.symmetric(
            horizontal: 3.w,
            vertical: 5.h,
          ),
          shrinkWrap: true,
          physics: const  NeverScrollableScrollPhysics(),
          mainAxisSpacing: 25,
          crossAxisSpacing: 25,
          crossAxisCount: 2,
          itemBuilder: (context, index) {
            return CharacterCard(
              index: index,
              character: characterController.character[index],
              location: locationController.location[index],
              episode: episodesController.episode[index],
            );
          },
          itemCount: characterController.character.length,
        );
      }
    });
  }
}
