import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:http/http.dart ' as http;
import 'package:news_app/core/class/status_request.dart';

import 'check_internat.dart';

class crud {
  Future<Either<StatusRequest, Map>> postData(
      String LinkUrl, Map data, Map<String, String> header) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(LinkUrl),
            body: jsonEncode(data), headers: header);
        print(response);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          print(response.body);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.serverFailure);
      }
    } catch (_) {
      print(_);
      return const Left(StatusRequest.serverFailure);
    }
  }
}
