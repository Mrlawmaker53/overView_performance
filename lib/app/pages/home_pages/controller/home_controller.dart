import 'dart:math';

import 'package:demo_api/app/model/response_model1.dart';
import 'package:get/get.dart';

import '../../../model/response_model2.dart';
import '../../../service/app_service.dart';

class HomeController extends GetxController {
  ResponseModel1 data1 = ResponseModel1();
  List<ResponseModel2> data2 = <ResponseModel2>[];
  var isLoading1 = false.obs;
  var isLoading2 = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchData(kurl1, isLoading1, 1);
    fetchData(kurl2, isLoading2, 2);
  }

  void fetchData(String url, RxBool isLoader, int apiType) async {
    NetworkService obj = NetworkService();
    try {
      isLoader.value = true;

      if (apiType == 1) {
        Map<String, dynamic> res = await obj.callApi(url);
        data1 = ResponseModel1.fromJson(res);
      } else {
        dynamic res2 = await obj.callApi(url);
        for (var element in res2) {
          data2.add(ResponseModel2.fromJson(element));
        }
      }

      log(1);
      isLoader.value = false;
    } catch (e) {
      isLoader.value = false;
    }
  }
}
