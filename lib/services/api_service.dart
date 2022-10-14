import 'package:chopper/chopper.dart';
import 'package:myfootball/models/data/leagues.dart';
import 'package:myfootball/models/data/matches.dart';
import 'package:myfootball/models/data/teams.dart';
import 'package:myfootball/models/response/all_event_response.dart';
import 'package:myfootball/models/response/channel_response.dart';
part 'api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class APIService extends ChopperService {
  static APIService create([ChopperClient? client]) => _$APIService(client);

  @Post(path: '/events')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<AllEventResponse>> getAllEvent();
}
