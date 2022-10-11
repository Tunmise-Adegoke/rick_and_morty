import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty/util/app_colors.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white.withOpacity(0.1),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.primaryWhite,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
    );
  }
}
