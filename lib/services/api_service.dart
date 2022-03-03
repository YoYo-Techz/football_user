import 'package:chopper/chopper.dart';
import 'package:myfootball/models/data/leagues.dart';
import 'package:myfootball/models/data/matches.dart';
import 'package:myfootball/models/data/teams.dart';
import 'package:myfootball/models/response/channel_response.dart';
part 'api_service.chopper.dart';

@ChopperApi(baseUrl: "/api")
abstract class APIService extends ChopperService {
  static APIService create([ChopperClient? client]) => _$APIService(client);


@Get(path: '/teams')
  Future<Response<Teams>> teams();

  @Get(path: '/matches')
  Future<Response<Matches>> matchs();

  @Get(path: '/leagues')
  Future<Response<Leagues>> leagues();

 
  @Get(path: '/channel')
  Future<Response<ChannelResponse>> channel();
}

