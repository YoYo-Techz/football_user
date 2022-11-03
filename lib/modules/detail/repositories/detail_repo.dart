import 'package:myfootball/models/response/event_detail_response.dart';

abstract class DetailRepository {
  DetailRepository._();
  Future<EventDetailResponse> getEventDetail(
      {required int id, required String season});
}
