import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zainik/presentation/controllers/country_controller.dart';
import 'package:zainik/presentation/pages/widget/custom_staggered_grid.dart';

class Task2Page extends StatelessWidget {
  Task2Page({super.key});

  final controller = Get.find<CountryController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: const Text('Task 2'),
            actions: [
              if (controller.countries.isNotEmpty && controller.loading.isFalse)
                IconButton(
                  onPressed: () {
                    controller.fetchCountries();
                  },
                  icon: const Icon(Icons.refresh),
                )
            ],
          ),
          body: controller.loading.isTrue
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : controller.countries.isEmpty
                  ? Center(
                      child: ElevatedButton(
                        onPressed: () {
                          controller.fetchCountries();
                        },
                        child: const Text('Load countries'),
                      ),
                    )
                  : CustomStaggeredGrid(
                      cpuntries: controller.countries,
                    ),
        ));
  }
}
