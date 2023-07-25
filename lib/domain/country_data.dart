import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:zainik/domain/country_name.dart';
import 'package:zainik/domain/currency.dart';

class CountryData extends Equatable {
  final CountryName name;
  final List<Currency> currencies;
  const CountryData({
    required this.name,
    required this.currencies,
  });

  CountryData copyWith({
    CountryName? name,
    List<Currency>? currencies,
  }) {
    return CountryData(
      name: name ?? this.name,
      currencies: currencies ?? this.currencies,
    );
  }

  factory CountryData.fromMap(Map<String, dynamic> map) {
    return CountryData(
        name: CountryName.fromMap(map['name']),
        currencies: map['currencies'] != null
            ? List<Currency>.from((map['currencies'] as Map<String, dynamic>)
                .entries
                .map((e) => Currency.fromMap(e.value, e.key)))
            : []);
  }

  factory CountryData.fromJson(String source) =>
      CountryData.fromMap(json.decode(source));

  @override
  String toString() => 'CountryData(name: $name, currencies: $currencies)';

  @override
  List<Object> get props => [name, currencies];
}
