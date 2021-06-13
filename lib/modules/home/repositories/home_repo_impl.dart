import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/models/data/leagues.dart';
import 'package:myfootball/models/data/matches.dart';
import 'package:myfootball/models/data/teams.dart';
import 'package:myfootball/services/api_service.dart';

import 'home_repo.dart';

class HomeRepositoryImpl implements HomeRepository {
 APIService _apiService = Modular.get<APIService>();
  HomeRepositoryImpl._();
  static HomeRepository get instance => HomeRepositoryImpl._();

  @override
  Future<Teams> loadTeams() async {
    var response = await _apiService.teams();
    var data = response.body;
    return data!;
  }

 

  @override
  Future<Leagues> loadLeagues() async{
    var response = await _apiService.leagues();
    var data = response.body;
    return data!;
  }

  @override
  Future<Matches> loadMatchs() async{
   var response = await _apiService.matchs();
    var data = response.body;
    return data!;
  }
}
