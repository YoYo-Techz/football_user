import 'dart:async';
import 'dart:io';
import 'package:chopper/chopper.dart';

class APIInterceptor extends RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    return request.copyWith(headers: {
      HttpHeaders.acceptHeader: "application/json",
      "token": "1WVHaRpYf4Y7pQT08C13rnAK6R4BZlDjdSk23Wrm"
    });
  }
}
