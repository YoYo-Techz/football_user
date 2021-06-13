import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart' as http;
import 'package:myfootball/config/custom_json_converter.dart';
import 'package:myfootball/constant/configs.dart';
import 'package:myfootball/interceptors/api_interceptor.dart';
import 'package:myfootball/interceptors/log_request_interceptor.dart';
import 'package:myfootball/interceptors/log_response_interceptor.dart';
import 'package:myfootball/services/api_service.dart';

class APIClient extends ChopperClient {
  APIClient()
      : super(
          baseUrl: Config.basefootballUrl,
          client: http.IOClient(
            HttpClient()
              ..connectionTimeout = const Duration(
                seconds: Config.httpRequestTimeout,
              ),
          ),
          services: [
            APIService.create(),
          ],
          interceptors: [
            APIInterceptor(),
            LogRequestInterceptor(),
            LogResponseInterceptor(),
          ],
          converter: CustomJsonConverter(),
          errorConverter: CustomJsonConverter(),
        );
}
