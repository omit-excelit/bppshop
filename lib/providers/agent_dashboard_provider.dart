import 'package:bppshop/http_data/agent_dashboard_http.dart';
import 'package:bppshop/model/agent_dashboard_model.dart';
import 'package:flutter/material.dart';

class AgentDashboardProvider with ChangeNotifier{
  List<AgentDashboardModel> agentDashboardData = [];

  getAgentDashboardData() async {
    agentDashboardData = await AgentDashboardHttpRequest.fetchAgentDashboardData();
    notifyListeners();
  }
}