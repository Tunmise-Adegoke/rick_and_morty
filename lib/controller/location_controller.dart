import 'package:get/get.dart';

import 'package:rick_and_morty/api/location_services.dart';
import '../model/location.dart';

class LocationController extends GetxController {
  List<Location> location = [];
  LocationServices locationServices = LocationServices();
  final isLoading = true.obs;
  @override
  void onInit() {
    fetchLocation();
    super.onInit();
  }

  @override
  void fetchLocation() async {
    try {
      location = await locationServices.fetchLocation();
      isLoading(false);
    } on Exception catch (e) {
      print(e);
    }
    update();
  }
}
