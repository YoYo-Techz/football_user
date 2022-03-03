// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$isLoadingAtom = Atom(name: '_HomeStoreBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$errorMessageAtom = Atom(name: '_HomeStoreBase.errorMessage');

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  final _$leaguelistAtom = Atom(name: '_HomeStoreBase.leaguelist');

  @override
  ObservableList<League> get leaguelist {
    _$leaguelistAtom.reportRead();
    return super.leaguelist;
  }

  @override
  set leaguelist(ObservableList<League> value) {
    _$leaguelistAtom.reportWrite(value, super.leaguelist, () {
      super.leaguelist = value;
    });
  }

  final _$matchsListAtom = Atom(name: '_HomeStoreBase.matchsList');

  @override
  ObservableList<Matchs> get matchsList {
    _$matchsListAtom.reportRead();
    return super.matchsList;
  }

  @override
  set matchsList(ObservableList<Matchs> value) {
    _$matchsListAtom.reportWrite(value, super.matchsList, () {
      super.matchsList = value;
    });
  }

  final _$teamdatalistAtom = Atom(name: '_HomeStoreBase.teamdatalist');

  @override
  ObservableList<TeamsData> get teamdatalist {
    _$teamdatalistAtom.reportRead();
    return super.teamdatalist;
  }

  @override
  set teamdatalist(ObservableList<TeamsData> value) {
    _$teamdatalistAtom.reportWrite(value, super.teamdatalist, () {
      super.teamdatalist = value;
    });
  }

  final _$channellistAtom = Atom(name: '_HomeStoreBase.channellist');

  @override
  ObservableList<Channel> get channellist {
    _$channellistAtom.reportRead();
    return super.channellist;
  }

  @override
  set channellist(ObservableList<Channel> value) {
    _$channellistAtom.reportWrite(value, super.channellist, () {
      super.channellist = value;
    });
  }

  final _$loadTeamsAsyncAction = AsyncAction('_HomeStoreBase.loadTeams');

  @override
  Future<dynamic> loadTeams({Function? onSuccess}) {
    return _$loadTeamsAsyncAction
        .run(() => super.loadTeams(onSuccess: onSuccess));
  }

  final _$loadLeaguesAsyncAction = AsyncAction('_HomeStoreBase.loadLeagues');

  @override
  Future<dynamic> loadLeagues({Function? onSuccess}) {
    return _$loadLeaguesAsyncAction
        .run(() => super.loadLeagues(onSuccess: onSuccess));
  }

  final _$loadMatchsAsyncAction = AsyncAction('_HomeStoreBase.loadMatchs');

  @override
  Future<dynamic> loadMatchs() {
    return _$loadMatchsAsyncAction.run(() => super.loadMatchs());
  }

  final _$loadChannelsAsyncAction = AsyncAction('_HomeStoreBase.loadChannels');

  @override
  Future<dynamic> loadChannels() {
    return _$loadChannelsAsyncAction.run(() => super.loadChannels());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
errorMessage: ${errorMessage},
leaguelist: ${leaguelist},
matchsList: ${matchsList},
teamdatalist: ${teamdatalist},
channellist: ${channellist}
    ''';
  }
}
