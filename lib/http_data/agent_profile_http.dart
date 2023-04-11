import 'dart:convert';

import 'package:bppshop/http_data/custom_http.dart';
import 'package:bppshop/model/agent_profile_model.dart';
import 'package:http/http.dart' as http;

class AgentProfileHttpRequest{
  static Future<List<AgentProfileModel>> fetchAgentProfileData() async {
    try {
      List<AgentProfileModel> agentProfileData = [];
      AgentProfileModel agentProfileModel;
      String urlLink = "${baseUrl}agent/profile";
      var response = await http.get(Uri.parse(urlLink), headers: await CustomHttpRequest.getHeaderWithToken(),);
      var data = jsonDecode(response.body);
      print("profile details areeeeeeeeeeeeeeeeeeeeeee ${response.body}");

      agentProfileModel = AgentProfileModel.fromJson(data);
      agentProfileData.add(agentProfileModel);

      print("Name is -----------------${agentProfileData}");
      return agentProfileData;
    }
    catch (e) {
      print("problem is ----- $e");
      throw e.toString();
    }
  }
}