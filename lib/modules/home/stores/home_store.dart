import 'dart:io';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:myfootball/exceptions/exception.dart';
import 'package:myfootball/models/data/leagues.dart';
import 'package:myfootball/models/data/matches.dart';
import 'package:myfootball/models/data/teams.dart';
import 'package:myfootball/modules/home/repositories/home_repo.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  //

  HomeRepository _repo = Modular.get<HomeRepository>();

  @observable
  bool isLoading = false;

  @observable
  String? errorMessage;

  @observable
  Teams? teams;

  @observable
  Matches? matchs;

  @observable
  Leagues? leagues;

  @action
  Future loadhome(
      {Function? onSuccess, void Function(ExceptionMessage)? onFailed}) async {
    try {
      isLoading = true;
      await _repo.loadTeams().then((value) async {
        teams = value;
        await _repo.loadMatchs().then((valuev) async {
          matchs = valuev;
          await _repo.loadLeagues().then((league) async {
            leagues = league;
          });
        });
      });
      isLoading = false;
      if (onSuccess != null) onSuccess();
    } on SocketException {
      teams = await _repo.loadTeams();
      matchs = await _repo.loadMatchs();
      leagues = await _repo.loadLeagues();
      isLoading = false;
      errorMessage = "No internet";
    } catch (e) {
      teams = await _repo.loadTeams();
      matchs = await _repo.loadMatchs();
      leagues = await _repo.loadLeagues();
      isLoading = false;
      errorMessage = e.toString();
    }
    //
  }
}
