import 'dart:convert';
import 'dart:io';

import 'package:flyapp/domain/entity/user.dart';

class ApiClient {
  final client = HttpClient();

  Future<User> getBass(String pincode) async {
    final url = Uri.parse("http://213.27.32.24:8000/user/" + pincode);
    final request = await client.getUrl(url);
    final response = await request.close();
    final jsonStrings = await response.transform(utf8.decoder).toList();
    final jsonString = jsonStrings.join();
    final json = jsonDecode(jsonString);
    final data = User.fromJson(json);

    return data;
  }
}
