import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty/controller/getx_controller.dart';
import 'package:rick_and_morty/model/charaters.dart';
import 'package:rick_and_morty/util/constant.dart';

class CharacterCard extends StatelessWidget {
  final Character character;
  final int index;
  final RickAndMortyController rickAndMortyController =
      Get.put(RickAndMortyController());
  CharacterCard({
    Key? key,
    required this.character,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 220,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28),
                topRight: Radius.circular(28),
              ),
              image: DecorationImage(
                image: AssetImage(
                  character.image.toString(),
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  character.name.toString(),
                  style: kTextStyle,
                ),
                SizedBox(height: 5),
                Text(
                  character.status.toString(),
                  style: kTextStyle,
                ),
                SizedBox(height: 5),
                Text(
                  character.location.toString(),
                  style: kTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
