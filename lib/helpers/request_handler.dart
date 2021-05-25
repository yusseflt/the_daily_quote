import 'dart:convert';

import 'package:http/http.dart' as http;

abstract class RequestHandler {
  static Future handleReponses(http.Response response) async {
    switch (response.statusCode) {
      case 200:
        var jsonResponse = json.decode(response.body);
        return jsonResponse;

      default:
        throw "Ocorreu um erro";
    }
  }
}
