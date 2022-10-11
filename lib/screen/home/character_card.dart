import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty/controller/character_controller.dart';
import 'package:rick_and_morty/model/charaters.dart';
import 'package:rick_and_morty/model/episodes.dart';
import 'package:rick_and_morty/model/location.dart';
import 'package:rick_and_morty/screen/details_page.dart';
import 'package:rick_and_morty/util/app_colors.dart';
import 'package:rick_and_morty/util/constant.dart';
import 'package:sizer/sizer.dart';

class CharacterCard extends StatelessWidget {
  final Character character;
  final int index;
  final Location location;
  final Episodes episode;
  final CharacterController characterController =
      Get.put(CharacterController());
  CharacterCard({
    Key? key,
    required this.character,
    required this.index,
    required this.location,
    required this.episode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
            () => DetailsPage(
                  index: index,
                ),
            transition: Transition.cupertino);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryBlack,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: AppColors.primarySlimyGreen,
            width: 4,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    character.image.toString(),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 2.h),
                  Center(
                    child: Text(
                      character.name.toString(),
                      style: customTextstyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    character.status.toString(),
                    style: customTextstyle(),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
