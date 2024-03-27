import 'package:flutter/material.dart';
import 'package:musicplayergetx/config/colors.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SongAndVolume extends StatefulWidget {
  const SongAndVolume({super.key});

  @override
  State<SongAndVolume> createState() => _SongAndVolumeState();
}

class _SongAndVolumeState extends State<SongAndVolume> {
  var value = 10.0;
  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      animationDuration: 1,
      enableLoadingAnimation: true,
      axes: [
        RadialAxis(
          useRangeColorForAxis: true,
          startAngle: 30,
          endAngle: 150,
          canRotateLabels: false,
          interval: 10,
          isInversed: false,
          maximum: 100,
          showAxisLine: true,
          showLabels: false,
          showTicks: true,
          ranges: [
            GaugeRange(
              startValue: 0,
              endValue: value,
              color: primaryColor,
            )
          ],
          pointers: [
            MarkerPointer(
              color: primaryColor,
              value: value,
              onValueChanged: (valuee) {
                setState(() {
                  value = valuee;
                });
              },
              enableAnimation: true,
              enableDragging: true,
              markerType: MarkerType.circle,
              markerWidth: 20,
              markerHeight: 20,
            )
          ],
          annotations: [
            GaugeAnnotation(
                widget: Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  color: divColor,
                  image: const DecorationImage(
                      image: AssetImage("assets/images/cover.jpg"))),
            ))
          ],
        )
      ],
    );
  }
}
