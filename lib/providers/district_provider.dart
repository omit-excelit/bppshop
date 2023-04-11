import 'package:bppshop/http_data/district_http.dart';
import 'package:bppshop/model/district_model.dart';
import 'package:flutter/material.dart';

class DistrictProvider with ChangeNotifier{
  List<DistrictModel> districtData = [];

  getDistrictData() async {
    districtData = await DistrictHttpRequest.fetchDistrictData();
    notifyListeners();
  }
}