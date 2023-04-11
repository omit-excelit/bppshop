import 'package:bppshop/model/order_history_model.dart';
import 'package:flutter/material.dart';

class OrderHistoryProvider with ChangeNotifier{
  List<OrderHistoryModel> orderHistoryData = [];

  // getOrderHistoryData() async {
  //   orderHistoryData = await AgentProfileHttpRequest.fetchAgentProfileData();
  //   notifyListeners();
  // }
}