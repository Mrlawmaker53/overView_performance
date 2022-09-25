import 'package:demo_api/app/commanWidget/subLayoutOverview.dart';
import 'package:flutter/material.dart';

import '../pages/home_pages/controller/home_controller.dart';
import '../utils/utils.dart';

Widget mainOverviewLayer(String heading, HomeController controller) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
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
          height: 300,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: subLayoutOverView(
                  kSector.toString(),
                  controller.data1.sector.toString(),
                  true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: subLayoutOverView(
                  kIndustry.toString(),
                  controller.data1.industry.toString(),
                  true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:8.0),
                child: subLayoutOverView(
                  kMCap.toString(),
                  controller.data1.mCAP.toString(),
                  false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:8.0),
                child: subLayoutOverView(
                  kEv.toString(),
                  controller.data1.eV ?? '-',
                  false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:8.0),
                child: subLayoutOverView(
                  kBookValueShare.toString(),
                  controller.data1.bookNavPerShare.toString(),
                  false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:8.0),
                child: subLayoutOverView(
                  kPriceEranRatio.toString(),
                  controller.data1.tTMPE.toString(),
                  false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:8.0),
                child: subLayoutOverView(
                  kPEGRatio,
                  controller.data1.pEGRatio!.toStringAsFixed(2),
                  false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:4.0),
                child: subLayoutOverView(
                  kDividend.toString(),
                  controller.data1.yieldb.toString(),
                  false,
                ),
              ),
            ],
          ),
        ),
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


//  ListView.builder(
//             itemCount: controller.data2.length,
//             itemBuilder: (BuildContext context, int index) {
//               var rate = (controller.data2[index].changePercent);
//               return subLayout(
//                   controller.data2[index].label.toString(),
//                   (controller.data2[index].changePercent)!.toStringAsFixed(1),
//                   true,
//                   ((controller.data2[index].changePercent)! > 0.0)
//                       ? const Color.fromARGB(255, 11, 122, 15)
//                       : Colors.red,
//                   rate!.toDouble());
//             })