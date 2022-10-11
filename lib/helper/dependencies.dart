import 'package:get/get.dart';
import 'package:rick_and_morty/api/episodes_services.dart';
import 'package:rick_and_morty/api/location_services.dart';
import 'package:rick_and_morty/controller/episode_controller.dart';

import 'package:rick_and_morty/controller/location_controller.dart';

import '../api/character_services.dart';
import '../controller/character_controller.dart';

Future<void> init() async {
  //services
  Get.lazyPut(() => CharaterServices());
  Get.lazyPut(() => EpisodesServices());
  Get.lazyPut(() => LocationServices());

  //controllers
  Get.lazyPut(() => CharacterController());
  Get.lazyPut(() => EpisodeController());
  Get.lazyPut(() => LocationController());
}
