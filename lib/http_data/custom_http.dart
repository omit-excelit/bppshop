
import 'package:shared_preferences/shared_preferences.dart';

final String baseUrl = "https://agentapi.bppshop.com.bd/api/";
final String imageUrl = "https://agentapi.bppshop.com.bd/";

class CustomHttpRequest{
  static const Map<String, String> defaultHeader = {
    "Accept": "application/json",
  };
  static SharedPreferences? sharedPreferences;

  static Future<Map<String, String>> getHeaderWithToken() async {
    sharedPreferences = await SharedPreferences.getInstance();
    var header = {
      'Accept': 'application/json',
      "Authorization": "Bearer ${sharedPreferences!.getString('token')}",
    };
    print("user token is :${sharedPreferences!.getString('token')}");
    return header;
  }
}