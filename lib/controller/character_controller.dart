import 'package:get/get.dart';

import '../api/character_services.dart';
import '../model/charaters.dart';

class CharacterController extends GetxController {
  List<Character> character = [];
  CharaterServices charaterServices = CharaterServices();
  final isLoading = true.obs;

  @override
  @override
  void onInit() {
    fetchCharacter();
    super.onInit();
  }

  void fetchCharacter() async {
    try {
      character = await charaterServices.fetchCharacter();
      isLoading(false);
    } on Exception catch (e) {
      // ignore: avoid_print
      print(e);
    }
    update();
  }
}
