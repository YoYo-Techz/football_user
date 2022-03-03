import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:myfootball/models/data/channel.dart';
import 'package:myfootball/models/data/league.dart';
import 'package:myfootball/models/data/leagues.dart';
import 'package:myfootball/models/data/matches.dart';
import 'package:myfootball/models/data/matchs.dart';
import 'package:myfootball/models/data/teams.dart';
import 'package:myfootball/models/data/teams_data.dart';
import 'package:myfootball/models/response/channel_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  Teams,
  TeamsData,
  League,
  Leagues,
  Matchs,
  Matches,
  Channel,

  // Response
  ChannelResponse
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
