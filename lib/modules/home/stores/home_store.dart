import 'dart:io';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:myfootball/exceptions/exception.dart';
import 'package:myfootball/models/data/channel.dart';
import 'package:myfootball/models/data/league.dart';
import 'package:myfootball/models/data/leagues.dart';
import 'package:myfootball/models/data/matches.dart';
import 'package:myfootball/models/data/matchs.dart';
import 'package:myfootball/models/data/teams.dart';
import 'package:myfootball/models/data/teams_data.dart';
import 'package:myfootball/models/response/channel_response.dart';
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
  ObservableList<League> leaguelist = ObservableList<League>();

  @observable
  ObservableList<Matchs> matchsList = ObservableList<Matchs>();

  @observable
  ObservableList<TeamsData> teamdatalist = ObservableList<TeamsData>();

    @observable
  ObservableList<Channel> channellist = ObservableList<Channel>();

  @action
  Future loadTeams(
      {Function? onSuccess,
      required void Function(ExceptionMessage) onFailed}) async {
    try {
      isLoading = true;
      teamdatalist.clear();
      errorMessage = null;
      Teams teams = await _repo.loadTeams();
      teamdatalist.addAll(teams.data);
      isLoading = false;
      if (onSuccess != null) onSuccess();
    } on SocketException {
      await _repo.loadTeams();
      isLoading = false;
      errorMessage = "No internet";
    } catch (e) {
      await _repo.loadTeams();

      isLoading = false;
      errorMessage = e.toString();
    }
    //
  }

  @action
  Future loadLeagues(
      {Function? onSuccess,
      required void Function(ExceptionMessage) onFailed}) async {
    try {
      isLoading = true;
      errorMessage = null;
      leaguelist.clear();
      Leagues leagues = await _repo.loadLeagues();
      leaguelist.addAll(leagues.data);
      isLoading = false;
      if (onSuccess != null) onSuccess();
    } on SocketException {
      await _repo.loadLeagues();
      isLoading = false;
      errorMessage = "No internet";
    } catch (e) {
      await _repo.loadLeagues();
      isLoading = false;
      errorMessage = e.toString();
    }
  }

    @action
  Future loadMatchs() async {
    try {
      isLoading = true;
      errorMessage = null;
      matchsList.clear();
      Matches matches = await _repo.loadMatchs();
      matchsList.addAll(matches.data);
      isLoading = false;
    } on SocketException {
      await _repo.loadMatchs();
      isLoading = false;
      errorMessage = "No internet";
    } catch (e) {
      await _repo.loadMatchs();
      isLoading = false;
      errorMessage = e.toString();
    }
  }

  @action
  Future loadChannels() async {
    try {
      isLoading = true;
      errorMessage = null;
      channellist.clear();
      ChannelResponse channel = await _repo.loadChannel();
      channellist.addAll(channel.data);
      isLoading = false;
    } on SocketException {
      await _repo.loadChannel();
      isLoading = false;
      errorMessage = "No internet";
    } catch (e) {
      await _repo.loadChannel();
      isLoading = false;
      errorMessage = e.toString();
    }
  }
}
