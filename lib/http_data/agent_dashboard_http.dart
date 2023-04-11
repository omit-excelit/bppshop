import 'dart:convert';

import 'package:bppshop/http_data/custom_http.dart';
import 'package:bppshop/model/agent_dashboard_model.dart';
import 'package:http/http.dart' as http;

class AgentDashboardHttpRequest{
  static Future<List<AgentDashboardModel>> fetchAgentDashboardData() async {
    try {
      List<AgentDashboardModel> agentDashboardData = [];
      AgentDashboardModel agentDashboardModel;
      String urlLink = "${baseUrl}agent/dashboard";
      var response = await http.get(Uri.parse(urlLink), headers: await CustomHttpRequest.getHeaderWithToken(),);
      var data = jsonDecode(response.body);
      print("profile details areeeeeeeeeeeeeeeeeeeeeee ${response.body}");

      agentDashboardModel = AgentDashboardModel.fromJson(data);
      agentDashboardData.add(agentDashboardModel);

      print("Name is -----------------${agentDashboardData}");
      return agentDashboardData;
    }
    catch (e) {
      print("problem is ----- $e");
      throw e.toString();
    }
  }
}