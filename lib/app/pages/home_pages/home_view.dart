import 'package:demo_api/app/pages/home_pages/view/overView.dart';
import 'package:demo_api/app/pages/home_pages/view/performance.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/home_controller.dart';

class HomeViewRefactor extends GetView<HomeController> {
  final pageController = PageController(initialPage: 0);

  HomeViewRefactor({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          children: const [
            OverView(),
            Performance(),
          ],
        ),
      ),
    );
  }
}



// DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           bottom: const TabBar(
//             tabs: [
//               Text("Overview"),
//               Text('Performance'),
//             ],
//           ),
//         ),
//         body: const TabBarView(
//           children: [
//             OverView(),
//             Performance(),
//           ],
//         ),
//       ),
//     );