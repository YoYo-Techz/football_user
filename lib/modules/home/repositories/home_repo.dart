import 'package:myfootball/models/response/all_event_response.dart';
import 'package:myfootball/models/response/leagues_list_response.dart';
import 'package:myfootball/models/response/teams_list_response.dart';

abstract class HomeRepository {
  HomeRepository._();
  Future<AllEventResponse> getAllEventResponse();
  Future<TeamsListResponse> getTemasList({required int page});
  Future<LeaguesListResponse> getLeagues({required int page});
}
