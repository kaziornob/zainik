import 'package:flutter/material.dart';
import 'package:zainik/domain/country_data.dart';

class CountryNameContainer extends StatelessWidget {
  final CountryData country;
  const CountryNameContainer({
    super.key,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(10)),
      alignment: Alignment.center,
      child: Text(
        country.name.common,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
