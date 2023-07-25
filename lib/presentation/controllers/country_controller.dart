import 'package:get/get.dart';
import 'package:zainik/data/country_repository.dart';
import 'package:zainik/domain/country_data.dart';

class CountryController extends GetxController {
  final CountryRepository countryRepository;
  CountryController(this.countryRepository);

  final countries = RxList<CountryData>([]);
  final loading = RxBool(false);
  fetchCountries() async {
    loading.value = true;
    final countriesData = await countryRepository.getCountries();
    countries.value = countriesData;
    loading.value = false;
  }
}
