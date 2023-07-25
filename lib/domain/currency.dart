import 'package:equatable/equatable.dart';

class Currency extends Equatable {
  final String name;
  final String symbol;
  final String code;
  const Currency({
    required this.name,
    required this.symbol,
    required this.code,
  });

  Currency copyWith({
    String? name,
    String? symbol,
    String? code,
  }) {
    return Currency(
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
      code: code ?? this.code,
    );
  }

  factory Currency.fromMap(Map<String, dynamic> map, String code) {
    return Currency(
      name: map['name'] ?? '',
      symbol: map['symbol'] ?? '',
      code: code,
    );
  }

  @override
  String toString() => 'Currency(name: $name, symbol: $symbol, code: $code)';

  @override
  List<Object> get props => [name, symbol, code];
}
