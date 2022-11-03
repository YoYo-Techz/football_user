import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/models/response/event_list_response.dart';
import 'package:myfootball/models/response/new_list_response.dart';
import 'package:myfootball/models/response/teams_list_response.dart';
import 'package:myfootball/models/response/leagues_list_response.dart';
import 'package:myfootball/services/api_service.dart';

import 'home_repo.dart';

class HomeRepositoryImpl implements HomeRepository {
  APIService _apiService = Modular.get<APIService>();
  HomeRepositoryImpl._();
  static HomeRepository get instance => HomeRepositoryImpl._();

  @override
  Future<EventListResponse> getEventByDate(
      {required String date, required int page}) async {
    var response = await _apiService.getEventByDate(date: date, page: page);
    if (response.error != null) {
      throw response.error.toString();
    } else {
      var data = response.body;
      return data!;
    }
  }

  @override
  Future<LeaguesListResponse> getLeagues({required int page}) async {
    var response = await _apiService.getLeaguesList(page);
    if (response.error != null) {
      throw response.error.toString();
    } else {
      var data = response.body;
      return data!;
    }
  }

  @override
  Future<TeamsListResponse> getTemasList({required int page}) async {
    var response = await _apiService.getTeamsList(page);
    if (response.error != null) {
      throw response.error.toString();
    } else {
      var data = response.body;
      return data!;
    }
  }

  @override
  Future<NewListResponse> getNewList({required int page}) async {
    var response = await _apiService.getNewsList(page);
    if (response.error != null) {
      throw response.error.toString();
    } else {
      var data = response.body;
      return data!;
    }
  }
}
