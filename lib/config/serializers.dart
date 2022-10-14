import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:myfootball/models/data/away.dart';
import 'package:myfootball/models/data/channel.dart';
import 'package:myfootball/models/data/country.dart';
import 'package:myfootball/models/data/event.dart';
import 'package:myfootball/models/data/event_data.dart';
import 'package:myfootball/models/data/home.dart';
import 'package:myfootball/models/data/league.dart';
import 'package:myfootball/models/data/leagues.dart';
import 'package:myfootball/models/data/matches.dart';
import 'package:myfootball/models/data/matchs.dart';
import 'package:myfootball/models/data/teams.dart';
import 'package:myfootball/models/data/teams_data.dart';
import 'package:myfootball/models/data/version_check.dart';
import 'package:myfootball/models/response/all_event_response.dart';
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
  VersionCheck,

  // V2
  Away,
  Home,
  Event,
  EventData,
  Country,

  // Response
  ChannelResponse,
  AllEventResponse
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
