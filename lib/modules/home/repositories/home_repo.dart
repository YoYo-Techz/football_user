import 'package:myfootball/models/response/event_list_response.dart';
import 'package:myfootball/models/response/leagues_list_response.dart';
import 'package:myfootball/models/response/teams_list_response.dart';

abstract class HomeRepository {
  HomeRepository._();
  Future<EventListResponse> getEventByDate({required String date});
  Future<TeamsListResponse> getTemasList({required int page});
  Future<LeaguesListResponse> getLeagues({required int page});
}
