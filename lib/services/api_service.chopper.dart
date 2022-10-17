// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$APIService extends APIService {
  _$APIService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = APIService;

  @override
  Future<Response<AllEventResponse>> getEventByDate({required String date}) {
    final $url = '/api/events';
    final $body = <String, dynamic>{'date': date};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AllEventResponse, AllEventResponse>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }

  @override
  Future<Response<TeamsListResponse>> getTeamsList(int page) {
    final $url = '/api/teams';
    final $body = <String, dynamic>{'page': page};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<TeamsListResponse, TeamsListResponse>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }

  @override
  Future<Response<LeaguesListResponse>> getLeaguesList(int page) {
    final $url = '/api/leagues';
    final $body = <String, dynamic>{'page': page};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<LeaguesListResponse, LeaguesListResponse>($request,
        requestConverter: FormUrlEncodedConverter.requestFactory);
  }
}
