import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/models/data/leagues.dart';
import 'package:myfootball/models/data/matches.dart';
import 'package:myfootball/models/data/teams.dart';
import 'package:myfootball/models/response/all_event_response.dart';
import 'package:myfootball/models/response/channel_response.dart';
import 'package:myfootball/models/response/teams_list_response.dart';
import 'package:myfootball/models/response/leagues_list_response.dart';
import 'package:myfootball/services/api_service.dart';

import 'home_repo.dart';

class HomeRepositoryImpl implements HomeRepository {
  APIService _apiService = Modular.get<APIService>();
  HomeRepositoryImpl._();
  static HomeRepository get instance => HomeRepositoryImpl._();

  @override
  Future<AllEventResponse> getAllEventResponse() async {
    var response = await _apiService.getAllEvent();
    var data = response.body;
    return data!;
  }

  @override
  Future<LeaguesListResponse> getLeagues({required int page}) async {
    var response = await _apiService.getLeaguesList(page);
    var data = response.body;
    return data!;
  }

  @override
  Future<TeamsListResponse> getTemasList({required int page}) async {
    var response = await _apiService.getTeamsList(page);
    var data = response.body;
    return data!;
  }
}
