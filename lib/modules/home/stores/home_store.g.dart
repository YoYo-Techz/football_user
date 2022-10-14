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

  final _$todaymatchsListAtom = Atom(name: '_HomeStoreBase.todaymatchsList');

  @override
  ObservableList<Matchs> get todaymatchsList {
    _$todaymatchsListAtom.reportRead();
    return super.todaymatchsList;
  }

  @override
  set todaymatchsList(ObservableList<Matchs> value) {
    _$todaymatchsListAtom.reportWrite(value, super.todaymatchsList, () {
      super.todaymatchsList = value;
    });
  }

  final _$livematchsListAtom = Atom(name: '_HomeStoreBase.livematchsList');

  @override
  ObservableList<Matchs> get livematchsList {
    _$livematchsListAtom.reportRead();
    return super.livematchsList;
  }

  @override
  set livematchsList(ObservableList<Matchs> value) {
    _$livematchsListAtom.reportWrite(value, super.livematchsList, () {
      super.livematchsList = value;
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

  final _$versionCheckAtom = Atom(name: '_HomeStoreBase.versionCheck');

  @override
  VersionCheck? get versionCheck {
    _$versionCheckAtom.reportRead();
    return super.versionCheck;
  }

  @override
  set versionCheck(VersionCheck? value) {
    _$versionCheckAtom.reportWrite(value, super.versionCheck, () {
      super.versionCheck = value;
    });
  }

  final _$enforcedVersionRawAtom =
      Atom(name: '_HomeStoreBase.enforcedVersionRaw');

  @override
  String? get enforcedVersionRaw {
    _$enforcedVersionRawAtom.reportRead();
    return super.enforcedVersionRaw;
  }

  @override
  set enforcedVersionRaw(String? value) {
    _$enforcedVersionRawAtom.reportWrite(value, super.enforcedVersionRaw, () {
      super.enforcedVersionRaw = value;
    });
  }

  final _$currentVersionRawAtom =
      Atom(name: '_HomeStoreBase.currentVersionRaw');

  @override
  String? get currentVersionRaw {
    _$currentVersionRawAtom.reportRead();
    return super.currentVersionRaw;
  }

  @override
  set currentVersionRaw(String? value) {
    _$currentVersionRawAtom.reportWrite(value, super.currentVersionRaw, () {
      super.currentVersionRaw = value;
    });
  }

  final _$isForceAtom = Atom(name: '_HomeStoreBase.isForce');

  @override
  bool? get isForce {
    _$isForceAtom.reportRead();
    return super.isForce;
  }

  @override
  set isForce(bool? value) {
    _$isForceAtom.reportWrite(value, super.isForce, () {
      super.isForce = value;
    });
  }

  final _$releaseNoteAtom = Atom(name: '_HomeStoreBase.releaseNote');

  @override
  String? get releaseNote {
    _$releaseNoteAtom.reportRead();
    return super.releaseNote;
  }

  @override
  set releaseNote(String? value) {
    _$releaseNoteAtom.reportWrite(value, super.releaseNote, () {
      super.releaseNote = value;
    });
  }

  final _$forceUpdateAtom = Atom(name: '_HomeStoreBase.forceUpdate');

  @override
  bool get forceUpdate {
    _$forceUpdateAtom.reportRead();
    return super.forceUpdate;
  }

  @override
  set forceUpdate(bool value) {
    _$forceUpdateAtom.reportWrite(value, super.forceUpdate, () {
      super.forceUpdate = value;
    });
  }

  final _$mathcIndexAtom = Atom(name: '_HomeStoreBase.mathcIndex');

  @override
  int get mathcIndex {
    _$mathcIndexAtom.reportRead();
    return super.mathcIndex;
  }

  @override
  set mathcIndex(int value) {
    _$mathcIndexAtom.reportWrite(value, super.mathcIndex, () {
      super.mathcIndex = value;
    });
  }

  final _$initConfigAsyncAction = AsyncAction('_HomeStoreBase.initConfig');

  @override
  Future<void> initConfig() {
    return _$initConfigAsyncAction.run(() => super.initConfig());
  }

  final _$updateConfigAsyncAction = AsyncAction('_HomeStoreBase.updateConfig');

  @override
  Future<dynamic> updateConfig() {
    return _$updateConfigAsyncAction.run(() => super.updateConfig());
  }

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  void mathcIndexChange(int index) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.mathcIndexChange');
    try {
      return super.mathcIndexChange(index);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
errorMessage: ${errorMessage},
leaguelist: ${leaguelist},
matchsList: ${matchsList},
todaymatchsList: ${todaymatchsList},
livematchsList: ${livematchsList},
teamdatalist: ${teamdatalist},
channellist: ${channellist},
versionCheck: ${versionCheck},
enforcedVersionRaw: ${enforcedVersionRaw},
currentVersionRaw: ${currentVersionRaw},
isForce: ${isForce},
releaseNote: ${releaseNote},
forceUpdate: ${forceUpdate},
mathcIndex: ${mathcIndex}
    ''';
  }
}
