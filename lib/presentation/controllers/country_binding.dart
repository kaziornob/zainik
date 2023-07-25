import 'package:get/get.dart';
import 'package:zainik/data/country_repository.dart';
import 'package:zainik/presentation/controllers/country_controller.dart';

class CountryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CountryRepository());
    Get.lazyPut(() => CountryController(Get.find()));
  }
}
