class ResponseModel2 {
  int? iD;
  String? label;
  String? chartPeriodCode;
  double? changePercent;

  ResponseModel2(
      {iD, label, chartPeriodCode, changePercent});

  ResponseModel2.fromJson(json) {
    iD = json['ID'];
    label = json['Label'];
    chartPeriodCode = json['ChartPeriodCode'];
    changePercent = json['ChangePercent'];
  }

  Future<Map<String, dynamic>> toJson() async {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Label'] = label;
    data['ChartPeriodCode'] = chartPeriodCode;
    data['ChangePercent'] = changePercent;
    return data;
  }
}
