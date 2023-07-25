import 'dart:convert';

import 'package:equatable/equatable.dart';

class CountryName extends Equatable {
  final String common;
  final String official;
  const CountryName({
    required this.common,
    required this.official,
  });

  CountryName copyWith({
    String? common,
    String? official,
  }) {
    return CountryName(
      common: common ?? this.common,
      official: official ?? this.official,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'common': common,
      'official': official,
    };
  }

  factory CountryName.fromMap(Map<String, dynamic> map) {
    return CountryName(
      common: map['common'] ?? '',
      official: map['official'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CountryName.fromJson(String source) =>
      CountryName.fromMap(json.decode(source));

  @override
  String toString() => 'CountryName(common: $common, official: $official)';

  @override
  List<Object> get props => [common, official];
}
