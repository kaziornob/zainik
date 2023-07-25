import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Task1Page extends StatelessWidget {
  const Task1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 1'),
      ),
      backgroundColor: const Color.fromARGB(255, 249, 248, 246),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<Locale>(
              value: Get.locale,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              style: Theme.of(context).textTheme.titleSmall,
              underline: const SizedBox.shrink(),
              onChanged: (newValue) {
                if (newValue != null) {
                  Get.updateLocale(newValue);
                }
              },
              items: const [
                DropdownMenuItem(
                  value: Locale('en', 'US'),
                  child: Text('English'),
                ),
                DropdownMenuItem(
                  value: Locale('ar', 'SA'),
                  child: Text('عربي'),
                ),
              ],
            ),
            Card(
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://i.pravatar.cc/300'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "name".tr,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("${"phone".tr}: ${"phone_number".tr}"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
