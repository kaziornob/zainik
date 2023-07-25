import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:zainik/domain/country_data.dart';

class CountryRepository {
  Future<List<CountryData>> getCountries() async {
    final response =
        await http.get(Uri.parse('https://restcountries.com/v3.1/all'));
    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body);
      final List<dynamic> countries = decoded as List<dynamic>;
      final allCountreis = countries
          .map((dynamic country) => CountryData.fromMap(country))
          .toList();

      final filteredCountries = allCountreis
          .where((country) => country.currencies
              .where((currency) => currency.name.split(' ').length == 2)
              .isNotEmpty)
          .toList();
      return filteredCountries;
    } else {
      throw Exception('Failed to load countries: ${response.body}}');
    }
  }
}
