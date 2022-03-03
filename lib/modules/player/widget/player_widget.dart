import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class PlayerWidget extends StatefulWidget {
  final String link;
  PlayerWidget({Key? key, required this.link}) : super(key: key);

  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Colors.transparent,
          ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer.network(
              widget.link,
              betterPlayerConfiguration: BetterPlayerConfiguration(
                aspectRatio: 16 / 9,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
