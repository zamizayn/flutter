import 'dart:convert';
import 'package:haahooui/data/user.dart';
import 'package:http/http.dart' as http;

class Services {
  static const String url = "https://jsonplaceholder.typicode.com/users";

  static Future<List<User>> getUsers() async {
    try {
      final response = await http.get(url);
      print(response.statusCode);
      if (response.statusCode == 200) {
        List<User> users = parseUsers(response.body);
        print("object"+users[0].name);
        return users;
      } else {
        throw Exception("error");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  static List<User> parseUsers(String response) {
    final parsed = json.decode(response).cast<Map<String, dynamic>>();
    return parsed.map<User>((json) => User.fromJson(json)).toList();
  }
}
