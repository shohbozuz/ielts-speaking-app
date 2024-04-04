import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ielts_speaking/data/model/part1.dart';

class Par1Service {
  Future<Either<String, dynamic>> getPart1() async {
    try {
      Response response =
          await Dio().get('http://devsho3f.beget.tech/part1.json');
      if (response.statusCode == 200) {
        return right((response.data as List)
            .map((e) => Part1Model.fromRawJson(jsonEncode(e)))
            .toList());
      } else {
        return left(response.statusMessage.toString());
      }
    } on DioException catch (e) {
      return handleDioException(e);
    }
  }

  Either<String, dynamic> handleDioException(DioException error) {
    String errorMessage = 'Http Xatosi: ';

    errorMessage += error.message!;
    print(errorMessage);

    return left(errorMessage);
  }
}
