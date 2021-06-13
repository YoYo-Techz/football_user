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

  final _$teamsAtom = Atom(name: '_HomeStoreBase.teams');

  @override
  Teams? get teams {
    _$teamsAtom.reportRead();
    return super.teams;
  }

  @override
  set teams(Teams? value) {
    _$teamsAtom.reportWrite(value, super.teams, () {
      super.teams = value;
    });
  }

  final _$matchsAtom = Atom(name: '_HomeStoreBase.matchs');

  @override
  Matches? get matchs {
    _$matchsAtom.reportRead();
    return super.matchs;
  }

  @override
  set matchs(Matches? value) {
    _$matchsAtom.reportWrite(value, super.matchs, () {
      super.matchs = value;
    });
  }

  final _$leaguesAtom = Atom(name: '_HomeStoreBase.leagues');

  @override
  Leagues? get leagues {
    _$leaguesAtom.reportRead();
    return super.leagues;
  }

  @override
  set leagues(Leagues? value) {
    _$leaguesAtom.reportWrite(value, super.leagues, () {
      super.leagues = value;
    });
  }

  final _$loadTeamsAsyncAction = AsyncAction('_HomeStoreBase.loadTeams');

  @override
  Future<dynamic> loadTeams(
      {Function? onSuccess, void Function(ExceptionMessage)? onFailed}) {
    return _$loadTeamsAsyncAction
        .run(() => super.loadTeams(onSuccess: onSuccess, onFailed: onFailed));
  }

  final _$loadLeaguesAsyncAction = AsyncAction('_HomeStoreBase.loadLeagues');

  @override
  Future<dynamic> loadLeagues(
      {Function? onSuccess, void Function(ExceptionMessage)? onFailed}) {
    return _$loadLeaguesAsyncAction
        .run(() => super.loadLeagues(onSuccess: onSuccess, onFailed: onFailed));
  }

  final _$loadMatchsAsyncAction = AsyncAction('_HomeStoreBase.loadMatchs');

  @override
  Future<dynamic> loadMatchs(
      {Function? onSuccess, void Function(ExceptionMessage)? onFailed}) {
    return _$loadMatchsAsyncAction
        .run(() => super.loadMatchs(onSuccess: onSuccess, onFailed: onFailed));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
errorMessage: ${errorMessage},
teams: ${teams},
matchs: ${matchs},
leagues: ${leagues}
    ''';
  }
}
