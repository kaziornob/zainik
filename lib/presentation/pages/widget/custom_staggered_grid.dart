import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:zainik/domain/country_data.dart';
import 'package:zainik/presentation/pages/widget/country_name_container.dart';

class CustomStaggeredGrid extends StatelessWidget {
  final List<CountryData> cpuntries;
  const CustomStaggeredGrid({super.key, required this.cpuntries});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      physics: const BouncingScrollPhysics(),
      child: StaggeredGrid.count(
        axisDirection: AxisDirection.down,
        crossAxisCount: 12,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        children: generateStaggeredGridTiles(cpuntries),
      ),
    );
  }

  List<StaggeredGridTile> generateStaggeredGridTiles(
      List<CountryData> countries) {
    List<StaggeredGridTile> staggeredGridTiles = [];
    int patternIndex = 0;
    List<int> crossAxisPattern = [4, 4, 4, 7, 5, 5, 4, 4, 4];
    List<double> mainAxisPattern = [3, 3, 3, 7, 3.5, 3.5, 3, 3, 3];

    for (int i = 0; i < countries.length; i++) {
      staggeredGridTiles.add(
        StaggeredGridTile.count(
          crossAxisCellCount:
              crossAxisPattern[patternIndex % crossAxisPattern.length],
          mainAxisCellCount:
              mainAxisPattern[patternIndex % mainAxisPattern.length],
          child: CountryNameContainer(country: countries[i]),
        ),
      );
      patternIndex++;
    }

    return staggeredGridTiles;
  }
}
