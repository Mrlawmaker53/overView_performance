import 'package:demo_api/app/pages/home_pages/controller/home_controller.dart';
import 'package:demo_api/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../commanWidget/mainoverviewlayer.dart';

class OverView extends GetView<HomeController> {
  const OverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isLoading1.value
          ? const Center(child:  CircularProgressIndicator())
          : mainOverviewLayer(kOverview, controller),
    );
  }
}
