import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicplayergetx/config/colors.dart';
import 'package:musicplayergetx/controller/songdatacontroller.dart';
import 'package:musicplayergetx/controller/songplayer_controller.dart';
import 'package:musicplayergetx/pages/playsong_page.dart';
import 'package:musicplayergetx/widgets/songpage_header.dart';
import 'package:musicplayergetx/widgets/songtile.dart';
import 'package:musicplayergetx/widgets/trendingsong_slider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    SongDataController songDataController = Get.put(SongDataController());
    SongPlayerController songPlayerController = Get.put(SongPlayerController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              const SongPageHeader(),
              const SizedBox(
                height: 20,
              ),
              const TrendingSong_Slider(),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        songDataController.isDeviceSong.value = false;
                      },
                      child: Text('Cloud Song',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: songDataController.isDeviceSong.value
                                        ? labeleColor
                                        : primaryColor,
                                  )),
                    ),
                    InkWell(
                        onTap: () {
                          songDataController.isDeviceSong.value = true;
                        },
                        child: Text(
                          'Device Song',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: songDataController.isDeviceSong.value
                                        ? primaryColor
                                        : labeleColor,
                                  ),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(() => songDataController.isDeviceSong.value
                  ? Column(
                      children: songDataController.localSongList.value
                          .map((e) => SongTile(
                            onPress: (){
                              songPlayerController.playLocalAudio(e.data);
                              Get.to(PlaySongPage());
                            },
                            songName: e.title,
                          ))
                          .toList())
                  : const Column(
                      children: [
                       
                      ],
                    ))
            ]),
          ),
        ),
      ),
    );
  }
}
