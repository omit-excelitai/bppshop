import 'dart:convert';

import 'package:bppshop/http_data/custom_http.dart';
import 'package:bppshop/model/district_model.dart';
import 'package:http/http.dart' as http;

class DistrictHttpRequest{
  static Future<List<DistrictModel>> fetchDistrictData() async {
    try {
      List<DistrictModel> districtData = [];
      DistrictModel districtModel;
      String urlLink = "${baseUrl}location/districts";
      var response = await http.get(Uri.parse(urlLink), headers: await CustomHttpRequest.getHeaderWithToken(),);
      var data = jsonDecode(response.body.toString());
      print("profile details areeeeeeeeeeeeeeeeeeeeeee ${data}");

      // for(Map<String, dynamic> responseData in data){
      //   districtModel = DistrictModel.fromJson(responseData);
      //   districtData.add(districtModel);
      // }
      districtModel = DistrictModel.fromJson(data);
      districtData.add(districtModel);

      print("Name is -----------------${districtData[0].data}");
      print("hjhsdjhso -----------------${districtModel.data![0].name}");

      return districtData;
    }
    catch (e) {
      print("problem is ----- $e");
      throw e.toString();
    }
  }
}