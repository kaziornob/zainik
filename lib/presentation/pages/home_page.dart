import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zainik/presentation/pages/task_1_page.dart';
import 'package:zainik/presentation/pages/task_2_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () async {
                        Get.to(const Task1Page());
                      },
                      child: const Text('Task 1'))),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(Task2Page());
                      },
                      child: const Text('Task 2')))
            ],
          ),
        ),
      ),
    );
  }
}
