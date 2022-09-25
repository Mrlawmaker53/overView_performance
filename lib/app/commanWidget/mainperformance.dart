import 'package:demo_api/app/commanWidget/subLayerPerformannce.dart';
import 'package:flutter/material.dart';

import '../pages/home_pages/controller/home_controller.dart';
import '../utils/utils.dart';

Widget mainPerformanceviewLayer(String heading, HomeController controller) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                heading,
                style: kHeadingTextStyle,
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(4.0),
          child: Divider(color: Colors.black),
        ),
        SizedBox(
            height: 380,
            child: ListView.builder(
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
                })),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('View more', style: kViewMoreTextStyle),
            )
          ],
        )
      ],
    ),
  );
}
