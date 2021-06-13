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
  Future loadTeams(
      {Function? onSuccess, void Function(ExceptionMessage)? onFailed}) async {
    try {
      isLoading = true;
      teams = await _repo.loadTeams();
      isLoading = false;
      if (onSuccess != null) onSuccess();
    } on SocketException {
      teams = await _repo.loadTeams();

      isLoading = false;
      errorMessage = "No internet";
    } catch (e) {
      teams = await _repo.loadTeams();

      isLoading = false;
      errorMessage = e.toString();
    }
    //
  }

  @action
  Future loadLeagues(
      {Function? onSuccess, void Function(ExceptionMessage)? onFailed}) async {
    try {
      isLoading = true;

      leagues = await _repo.loadLeagues();

      isLoading = false;
      if (onSuccess != null) onSuccess();
    } on SocketException {
      leagues = await _repo.loadLeagues();
      isLoading = false;
      errorMessage = "No internet";
    } catch (e) {
      leagues = await _repo.loadLeagues();
      isLoading = false;
      errorMessage = e.toString();
    }
  }

  @action
  Future loadMatchs(
      {Function? onSuccess, void Function(ExceptionMessage)? onFailed}) async {
    try {
      isLoading = true;
      matchs = await _repo.loadMatchs();
      isLoading = false;
      if (onSuccess != null) onSuccess();
    } on SocketException {
      matchs = await _repo.loadMatchs();

      isLoading = false;
      errorMessage = "No internet";
    } catch (e) {
      matchs = await _repo.loadMatchs();
      isLoading = false;
      errorMessage = e.toString();
    }
  }
}
