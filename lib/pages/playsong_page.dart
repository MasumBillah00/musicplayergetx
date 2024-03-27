import 'package:flutter/material.dart';
import 'package:musicplayergetx/widgets/playsong_header_button.dart';
import 'package:musicplayergetx/widgets/songand_volume.dart';
import 'package:musicplayergetx/widgets/songcontroller_button.dart';
import 'package:musicplayergetx/widgets/songdetails.dart';
// import 'package:musicplayergetx/widgets/songwave.dart';

class PlaySongPage extends StatelessWidget {
  const PlaySongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            PlaySongHeaderButton(),
            SizedBox(
              height: 10,
            ),
            SongAndVolume(),
            SizedBox(
              height: 40,
            ),
            SongDetails(),
            SizedBox(height: 10,),
            // SongWave(),
            // SizedBox(height: 20,),
            Spacer(),
            SongControllerButton(),
          ],
        ),
      )),
    );
  }
}
