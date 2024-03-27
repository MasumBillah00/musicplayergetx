import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:musicplayergetx/config/colors.dart';
import 'package:musicplayergetx/controller/songplayer_controller.dart';

class SongControllerButton extends StatelessWidget {
  const SongControllerButton({super.key});

  @override
  Widget build(BuildContext context) {
    SongPlayerController songPlayerController = Get.put(SongPlayerController());
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('02.34'),
            const Text('/'),
            Text(
              '2.34',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/icons/back.svg",
              width: 25,
            ),
            const SizedBox(
              width: 40,
            ),
            Obx(
              () => songPlayerController.isPlaying.value
                  ? InkWell(
                      onTap: () {
                        songPlayerController.pausePlaying();
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/icons/pause.svg",
                            width: 25,
                          ),
                        ),
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        songPlayerController.resumePlaying();
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/icons/play.svg",
                            width: 25,
                          ),
                        ),
                      ),
                    ),
            ),
            const SizedBox(
              width: 40,
            ),
            SvgPicture.asset(
              "assets/icons/next.svg",
              width: 25,
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              "assets/icons/suffle.svg",
              width: 25,
            ),
            SvgPicture.asset(
              "assets/icons/repeat.svg",
              width: 25,
            ),
            SvgPicture.asset(
              "assets/icons/songbook.svg",
              width: 25,
            ),
            SvgPicture.asset(
              "assets/icons/heart.svg",
              width: 25,
            ),
          ],
        )
      ],
    );
  }
}
