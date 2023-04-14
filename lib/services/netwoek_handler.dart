import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class NetworkHandler{

  static final client = http.Client();
  static final storage = FlutterSecureStorage();

  static Future<String> post(var body, String endpoint) async{
    var response = await client.post(buildUrl(endpoint), body: body, headers: {"Content-type":"application/json"});
    return response.body;
  }

  static Uri buildUrl(String endpoint){
    String host = "http://localhost:3005/";
    final apiPath = host + endpoint;
    return Uri.parse(apiPath);
  }

  static void storeToken(String token) async{
    await storage.write(key: "token", value: token);
  }

  static Future<String?> getToken(String token) async{
    return await storage.read(key: "token");
  }
}