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
  Future<Response<Teams>> teams() {
    final $url = '/api/teams';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Teams, Teams>($request);
  }

  @override
  Future<Response<Matches>> matchs() {
    final $url = '/api/matches';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Matches, Matches>($request);
  }

  @override
  Future<Response<Leagues>> leagues() {
    final $url = '/api/leagues';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Leagues, Leagues>($request);
  }

  @override
  Future<Response<ChannelResponse>> channel() {
    final $url = '/api/channel';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ChannelResponse, ChannelResponse>($request);
  }
}
