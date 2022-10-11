import 'package:get/get.dart';
import 'package:rick_and_morty/api/episodes_services.dart';
import 'package:rick_and_morty/model/episodes.dart';

class EpisodeController extends GetxController {
  List<Episodes> episode = [];
  EpisodesServices episodesServices = EpisodesServices();
  final isLoading = true.obs;

  @override
  void onInit() {
    fetchEpisodes();
    super.onInit();
  }

  @override
  void fetchEpisodes() async {
    try {
      episode = await episodesServices.fetchEpisodes();
      isLoading(false);
    } on Exception catch (e) {
      print(e);
    }
    update();
  }
}
