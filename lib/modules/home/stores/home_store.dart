import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:myfootball/config/serializers.dart';
import 'package:package_info/package_info.dart';
import 'package:myfootball/models/data/channel.dart';
import 'package:myfootball/models/data/league.dart';
import 'package:myfootball/models/data/leagues.dart';
import 'package:myfootball/models/data/matches.dart';
import 'package:myfootball/models/data/matchs.dart';
import 'package:myfootball/models/data/teams.dart';
import 'package:myfootball/models/data/teams_data.dart';
import 'package:myfootball/models/data/version_check.dart';
import 'package:myfootball/models/response/channel_response.dart';
import 'package:myfootball/modules/home/repositories/home_repo.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  //

  HomeRepository _repo = Modular.get<HomeRepository>();
  FirebaseRemoteConfig _remoteConfig = Modular.get<FirebaseRemoteConfig>();

  @observable
  bool isLoading = false;

  @observable
  String? errorMessage;

  @observable
  ObservableList<League> leaguelist = ObservableList<League>();

  @observable
  ObservableList<Matchs> matchsList = ObservableList<Matchs>();

  @observable
  ObservableList<Matchs> todaymatchsList = ObservableList<Matchs>();

  @observable
  ObservableList<Matchs> livematchsList = ObservableList<Matchs>();

  @observable
  ObservableList<TeamsData> teamdatalist = ObservableList<TeamsData>();

  @observable
  ObservableList<Channel> channellist = ObservableList<Channel>();

  @observable
  VersionCheck? versionCheck;

  @observable
  String? enforcedVersionRaw;

  @observable
  String? currentVersionRaw;

  @observable
  bool? isForce;

  @observable
  String? releaseNote;

  @observable
  bool forceUpdate = false;

  @observable
  int mathcIndex = 2;

  @action
  void mathcIndexChange(int index) {
    mathcIndex = index;
  }

  @action
  Future<void> initConfig() async {
    await _remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: Duration(
          seconds: 5), // a fetch will wait up to 10 seconds before timing out
      minimumFetchInterval: Duration(
          seconds:
              10), // fetch parameters will be cached for a maximum of 1 hour
    ));
    updateConfig();
  }

  @action
  Future updateConfig() async {
    await _remoteConfig.fetchAndActivate();
    var version = _remoteConfig.getString("force_update_current_version");
    final value = serializers.deserializeWith(
        VersionCheck.serializer, json.decode(version));
    versionCheck = value;
    isForce = versionCheck?.isForce;
    enforcedVersionRaw = versionCheck?.version;
    releaseNote = versionCheck?.releaseNote;
    double enforceVersion =
        double.parse(enforcedVersionRaw!.trim().replaceAll(".", ""));

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    currentVersionRaw = packageInfo.version;
    double currentVersion =
        double.parse(currentVersionRaw!.trim().replaceAll(".", ""));

    if (enforceVersion > currentVersion && isForce == true) {
      forceUpdate = true;
    } else {
      forceUpdate = false;
    }
    print(
        'force update in store? : $forceUpdate $enforceVersion $currentVersion');
  }

  @action
  Future loadTeams({
    Function? onSuccess,
  }) async {
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
  Future loadLeagues({
    Function? onSuccess,
  }) async {
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
    final now = DateTime.now();
    try {
      isLoading = true;
      errorMessage = null;
      matchsList.clear();
      Matches matches = await _repo.loadMatchs();
      matchsList.addAll(matches.data);
      for (var matche in matches.data) {
        if (matche.status == "started") {
          livematchsList.add(matche);
        }
        if (matche.date == "${now.day}.${now.month}.${now.year}") {
          todaymatchsList.add(matche);
        }
      }
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
