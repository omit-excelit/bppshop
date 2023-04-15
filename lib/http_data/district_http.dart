import 'dart:convert';

import 'package:bppshop/http_data/custom_http.dart';
import 'package:bppshop/model/district_model.dart';
import 'package:http/http.dart' as http;

class DistrictHttpRequest{
  static Future<List<DistrictModel>> fetchDistrictData() async {
    try {
      List<DistrictModel> districtData = [];
      DistrictModel? districtModel;
      String urlLink = "${baseUrl}location/districts";
      var response = await http.get(Uri.parse(urlLink), headers: await CustomHttpRequest.getHeaderWithToken(),);
      var data = jsonDecode(response.body.toString());
      print("profile details areeeeeeeeeeeeeeeeeeeeeee ${data}");

      // if (response.statusCode == 200){
      //   for(Map<String, dynamic> responseData in data){
      //       districtData.add(DistrictModel.fromJson(responseData));
      //     }
      //   return districtData;
      // }
      // else{
      //   return districtData;
      // }
      // for(Map<String, dynamic> responseData in data){
      //   districtModel = DistrictModel.fromJson(responseData);
      //   districtData.add(districtModel);
      // }
      districtModel = DistrictModel.fromJson(data);
      districtData.add(districtModel);

      // if (response.statusCode == 200) {
      //   for (Map<String, dynamic> i in data) {
      //     productList.add(ProductModel.fromJson(i));
      //   }
      //   return productList;
      // } else {
      //   return productList;
      // }

      print("Name is -----------------${districtData}");
      //print("Name is -----------------${data}");
      //print("hjhsdjhso -----------------${districtModel}");

      return data;
    }
    catch (e) {
      print("problem is ----- $e");
      throw e.toString();
    }
  }
}