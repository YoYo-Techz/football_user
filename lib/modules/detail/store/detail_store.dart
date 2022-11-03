import 'dart:io';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:myfootball/models/response/event_detail_response.dart';
import 'package:myfootball/modules/detail/repositories/detail_repo.dart';

part 'detail_store.g.dart';

class DetailStore = _DetailStoreBase with _$DetailStore;

abstract class _DetailStoreBase with Store {
  DetailRepository _repo = Modular.get<DetailRepository>();

  @observable
  bool isLoading = false;

  @observable
  int tablength = 4;

  @observable
  String? errorMessage;

  @observable
  EventDetailResponse? eventDetail;

  @action
  Future getEventDetail({required int id, required String season}) async {
    try {
      isLoading = true;
      var response = await _repo.getEventDetail(id: id, season: season);
      eventDetail = response;
      isLoading = false;
    } on SocketException {
      await _repo.getEventDetail(id: id, season: season);
      isLoading = false;
      errorMessage = "No internet";
    } catch (e) {
      await _repo.getEventDetail(id: id, season: season);
      isLoading = false;
      errorMessage = e.toString();
    }
  }
}
