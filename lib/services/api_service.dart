import 'package:chopper/chopper.dart';
import 'package:myfootball/models/response/all_event_response.dart';
import 'package:myfootball/models/response/leagues_list_response.dart';
import 'package:myfootball/models/response/teams_list_response.dart';
part 'api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class APIService extends ChopperService {
  static APIService create([ChopperClient? client]) => _$APIService(client);

// Get Event By Date
  @Post(path: '/events')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<AllEventResponse>> getEventByDate(
      {@Field('date') required String date});

  ///
  @Post(path: '/teams')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<TeamsListResponse>> getTeamsList(@Field('page') int page);

  ///
  @Post(path: '/leagues')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<LeaguesListResponse>> getLeaguesList(@Field('page') int page);
}
