import 'dart:developer';

import 'package:dio/dio.dart';

const kurl1 =
    'https://api.stockedge.com/Api/SecurityDashboardApi/GetCompanyEquityInfoForSecurity/5051?lang=en';
const kurl2 =
    'https://api.stockedge.com/Api/SecurityDashboardApi/GetTechnicalPerformanceBenchmarkForSecurity/5051?lang=en';

class NetworkService {
  Future callApi(String url) async {
    try {
      var response = await Dio().get(url);
      return response.data;
    } catch (e) {
      log('$e');
      return null;
    }
  }
}
