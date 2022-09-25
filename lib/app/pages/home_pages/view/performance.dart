import 'package:demo_api/app/pages/home_pages/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../commanWidget/mainperformance.dart';
import '../../../utils/utils.dart';

class Performance extends GetView<HomeController> {
  const Performance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return mainPerformanceviewLayer(kPerformance, controller);
  }
}
