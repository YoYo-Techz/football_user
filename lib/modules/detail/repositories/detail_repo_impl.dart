import 'package:flutter_modular/flutter_modular.dart';
import 'package:myfootball/models/response/event_detail_response.dart';
import 'package:myfootball/modules/detail/repositories/detail_repo.dart';
import 'package:myfootball/services/api_service.dart';

class DetailRepositoryImpl implements DetailRepository {
  APIService _apiService = Modular.get<APIService>();
  DetailRepositoryImpl._();
  static DetailRepository get instance => DetailRepositoryImpl._();

  @override
  Future<EventDetailResponse> getEventDetail(
      {required int id, required String season}) async {
    var response = await _apiService.getEventDetails(id: id, season: season);
    var data = response.body;
    return data!;
  }
}
