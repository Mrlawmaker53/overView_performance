import 'package:demo_api/app/pages/home_pages/binding/home_binding.dart';
import 'package:demo_api/app/pages/home_pages/view/overView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/pages/home_pages/home_view.dart';
import 'app/pages/home_pages/view/performance.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
          name: '/homeNew',
          page: () => HomeViewRefactor(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: '/overview',
          page: () => OverView(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: '/performance',
          page: () => Performance(),
          binding: HomeBinding(),
        )
      ],
      initialRoute: '/homeNew',
    );
  }
}
