import 'package:demo_api/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget drawerWieght() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('HDFC Bank'),
        ),
        ListTile(
          title: const Text(kOverview),
          onTap: () {
            Get.to('/Overview');
          },
        ),
        ListTile(
          title: const Text(kPerformance),
          onTap: () {
            Get.toNamed('/Overview');
          },
        ),
      ],
    ),
  );
}
