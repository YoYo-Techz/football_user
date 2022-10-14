import 'package:myfootball/models/data/leagues.dart';
import 'package:myfootball/models/data/matches.dart';
import 'package:myfootball/models/data/teams.dart';
import 'package:myfootball/models/response/all_event_response.dart';
import 'package:myfootball/models/response/channel_response.dart';

abstract class HomeRepository {
  HomeRepository._();
  Future<AllEventResponse> getAllEventResponse();
}
