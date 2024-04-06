import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ielts_speaking/data/model/part3.dart';

class Part3Service {
  Future<Either<String, dynamic>> getPart3() async {
    try {
      Response response =
          await Dio().get('http://devsho3f.beget.tech/part3.json');
      if (response.statusCode == 200) {
        return right((response.data as List)
            .map((e) => Part3Model.fromRawJson(jsonEncode(e)))
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
