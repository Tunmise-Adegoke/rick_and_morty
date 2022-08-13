import 'package:get/get.dart';
import 'package:rick_and_morty/api/character_services.dart';
import 'package:rick_and_morty/api/episodes_services.dart';
import 'package:rick_and_morty/api/location_services.dart';
import 'package:rick_and_morty/model/charaters.dart';
import 'package:rick_and_morty/model/episodes.dart';

import '../model/location.dart';

class RickAndMortyController extends GetxController {
  List<Character> characterList = [];
  List<Episodes> episodeList = [];
  List<Location> locationList = [];
  CharaterServices charaterServices = CharaterServices();
  EpisodesServices episodesServices = EpisodesServices();
  LocationServices locationServices = LocationServices();
  final isLoading = true.obs;

  @override
  
  @override
  void onInit() {
    fetchCharacter();
    fetchEpisodes();
    fetchLocation();
    super.onInit();
  }

  void fetchCharacter() async {
    try {
      characterList = await charaterServices.fetchCharater();
      isLoading(false);
    } on Exception catch (e) {
      print(e);
    }
    update();
  }

  void fetchEpisodes() async {
    try {
      episodeList = await episodesServices.fetchEpisodes();
    } on Exception catch (e) {
      print(e);
    }
    update();
  }

  void fetchLocation() async {
    try {
      locationList = await locationServices.fetchLocation();
    } on Exception catch (e) {
      print(e);
    }
    update();
  }
}
