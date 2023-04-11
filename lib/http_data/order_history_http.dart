import 'dart:convert';

import 'package:bppshop/http_data/custom_http.dart';
import 'package:bppshop/model/order_history_model.dart';
import 'package:http/http.dart' as http;

class OrderHistoryHttpRequest{
  static Future<List<OrderHistoryModel>> fetchOrderHistoryData() async {
    try {
      List<OrderHistoryModel> orderHistoryData = [];
      OrderHistoryModel orderHistoryModel;
      String urlLink = "${baseUrl}agent/order/all";
      var response = await http.post(Uri.parse(urlLink), body: {
        "page": 1.toString(),
        "no_of_rows": 5.toString()
      });
      var data = jsonDecode(response.body);
      print("profile details areeeeeeeeeeeeeeeeeeeeeee ${response.body}");

      orderHistoryModel = OrderHistoryModel.fromJson(data);
      orderHistoryData.add(orderHistoryModel);

      print("Name is -----------------${orderHistoryData}");
      return orderHistoryData;
    }
    catch (e) {
      print("problem is ----- $e");
      throw e.toString();
    }
  }
}