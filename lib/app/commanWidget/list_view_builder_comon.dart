import 'package:demo_api/app/commanWidget/subLayerPerformannce.dart';
import 'package:flutter/material.dart';

import '../pages/home_pages/controller/home_controller.dart';

Widget listViewBuilder(HomeController controller) {
  return ListView.builder(
      itemCount: controller.data2.length,
      itemBuilder: (BuildContext context, int index) {
        var rate = (controller.data2[index].changePercent);
        return subLayout(
            controller.data2[index].label.toString(),
            (controller.data2[index].changePercent)!.toStringAsFixed(1),
            true,
            ((controller.data2[index].changePercent)! > 0.0)
                ? const Color.fromARGB(255, 11, 122, 15)
                : Colors.red,
            rate!.toDouble());
      });
}

//       itemCount: controller.data1.length,
//       itemBuilder: (BuildContext context, int index) {
//         var rate = (controller.data1[index].changePercent);
//         return subLayout(
//             controller.data1[index].label.toString(),
//             (controller.data1[index].changePercent)!.toStringAsFixed(1),
//             true,
//             ((controller.data1[index].changePercent)! > 0.0)
//                 ? const Color.fromARGB(255, 11, 122, 15)
//                 : Colors.red,
//             rate!.toDouble());