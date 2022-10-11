import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty/controller/character_controller.dart';
import 'package:rick_and_morty/controller/episode_controller.dart';
import 'package:rick_and_morty/controller/location_controller.dart';
import 'package:rick_and_morty/model/charaters.dart';
import 'package:rick_and_morty/util/app_colors.dart';
import 'package:rick_and_morty/util/constant.dart';
import 'package:rick_and_morty/widgets/back_button.dart';

class DetailsPage extends StatefulWidget {
  final int index;

  const DetailsPage({Key? key, required this.index}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final CharacterController characterController =
      Get.put(CharacterController());
  final LocationController locationController = Get.put(LocationController());
  final EpisodeController episodeController = Get.put(EpisodeController());
  @override
  Widget build(BuildContext context) {
    Character character = characterController.character[widget.index];
    
    return Scaffold(
        appBar: AppBar(
          leading: const BackArrow(),
          elevation: 0,
          backgroundColor: AppColors.primaryBlack,
          title: const  Text('Details'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.seconadrySlimyGreen,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: NetworkImage(character.image.toString()),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  character.name.toString(),
                  style: BigTextStyle(),
                ),
                const SizedBox(height: 10),
                Text(
                  character.status.toString(),
                  style: smallTextStyle(),
                ),
                const SizedBox(height: 10),
                Text(
                  character.gender.toString(),
                  style: MediumTextStyle(),
                ),
                const SizedBox(
                  height: 10
                ),
                Text(
                  character.species.toString(),
                  style: MediumTextStyle(),
                ),
                const SizedBox(
                  height: 10
                ),
                Text(
                  'From:',
                  style: MediumTextStyle(),
                ),
                Text(
                  character.origin!.name.toString(),
                  style: smallTextStyle(),
                ),
                const SizedBox(
                  height: 10
                ),
                Text(
                  'Last seen: ',
                  style: MediumTextStyle(),
                ),
                Text(
                  character.location!.name.toString(),
                  style: smallTextStyle(),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: ((context, index) {
                        return ListTile(
                          title: Text(
                            character.episode.toString(),
                          ),
                        );
                      })),
                )
              ],
            ),
          ),
        ));
  }
}
