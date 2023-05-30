import 'dart:convert';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class BaseRepository<T> {

  Future<T?> processResult(Response<T?> response) async {
    // if (response.status.hasError) {
    //   String message = response.statusText ?? '';
    //   if (response.bodyString?.isNotEmpty == true) {
    //     final map = jsonDecode(response.bodyString!);
    //     if (map != null) {
    //       message = map['message'];
    //     }
    //   }
    //
    //   return Future.error(message);
    // } else {
    //
    //
    // }
    return response.body;
  }

}
