import 'dart:ffi';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';

class CommonWidget extends StatelessWidget {
  final Color color;
  final int audioNumber;

  const CommonWidget({
    super.key,
    required this.color,
    required this.audioNumber,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: MediaQuery.of(context).size.height / 7,
        width: MediaQuery.of(context).size.width,
        color: color,
      ),
      onTap: () {
        final player = AudioPlayer();
        player.play(AssetSource('assets_note${audioNumber}.wav'));
      },
    );
  }
}
