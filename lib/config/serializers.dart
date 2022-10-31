import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:myfootball/models/data/away.dart';
import 'package:myfootball/models/data/channel.dart';
import 'package:myfootball/models/data/country.dart';
import 'package:myfootball/models/data/event.dart';
import 'package:myfootball/models/data/event_data.dart';
import 'package:myfootball/models/data/goals.dart';
import 'package:myfootball/models/data/home.dart';
import 'package:myfootball/models/data/league.dart';
import 'package:myfootball/models/data/leagues.dart';
import 'package:myfootball/models/data/matches.dart';
import 'package:myfootball/models/data/matchs.dart';
import 'package:myfootball/models/data/pagination.dart';
import 'package:myfootball/models/data/periods.dart';
import 'package:myfootball/models/data/teams.dart';
import 'package:myfootball/models/data/teams_data.dart';
import 'package:myfootball/models/data/version_check.dart';
import 'package:myfootball/models/response/event_list_response.dart';
import 'package:myfootball/models/response/channel_response.dart';
import 'package:myfootball/models/response/leagues_list_response.dart';
import 'package:myfootball/models/response/teams_list_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  Teams,
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
  TeamsData,
  Country,
  Pagination,
  League,
  Periods,
  Goals,

  // Response
  ChannelResponse,
  EventListResponse,
  TeamsListResponse,
  LeaguesListResponse
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
