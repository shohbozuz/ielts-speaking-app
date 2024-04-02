import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ielts_speaking/data/model/part1.dart';

class Par1Service {
  // getUsers metodi foydalanuvchilarni olish uchun
  Future<Either<String, dynamic>> getPart1() async {
    try {
      // Dio orqali so'rov yuborish
      Response response =
          await Dio().get('http://devsho3f.beget.tech/part1.json');

      // Agar server to'g'ri javob qaytarsa
      if (response.statusCode == 200) {
        // JSON dan UserModel obyektlarini yaratish
        return right((response.data as List)
            .map((e) => Part1Model.fromRawJson(jsonEncode(e)))
            .toList());
      } else {
        // Agar xato bo'lsa xato xabarni qaytarish
        return left(response.statusMessage.toString());
      }
    } on DioError catch (e) {
      // HTTP xatolarni qayta ishlash
      return handleHttpError(
          e); // DioError obyektini handleHttpError funksiyasiga uzating
    }
  }

  // handleHttpError funksiyasi HTTP xatolarni aniqlash uchun
  Either<String, dynamic> handleHttpError(DioError error) {
    String errorMessage = 'HTTP Xatosi: ';

    if (error.response != null) {
      switch (error.response!.statusCode) {
        case 400:
          errorMessage += 'Noto\'g\'ri so\'rov';
          break;
        case 401:
          errorMessage += 'Ruxsat berilmagan';
          break;
        case 403:
          errorMessage += 'Muhlat tugagan';
          break;
        case 404:
          errorMessage += 'Topilmadi';
          break;
        case 500:
          errorMessage += 'Server ichki xatosi';
          break;
        case 503:
          errorMessage += 'Xizmat mavjud emas';
          break;
        default:
          errorMessage += 'Noma\'lum xato';
          break;
      }
      print(errorMessage);
      // Foydalanuvchi uchun xabarni ko'rsatish kerak bo'lsa
    } else {
      errorMessage += 'Hichqanday url topilmadi';
      print(errorMessage);
      // Foydalanuvchi uchun xabarni ko'rsatish kerak bo'lsa
    }

    // errorMessage ni Left Either sifatida qaytarish
    return left(errorMessage);
  }
}
