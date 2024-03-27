import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SongDetails extends StatelessWidget {
  const SongDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
              children: [
                SvgPicture.asset("assets/icons/play_outline.svg"),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '210 Plays',
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Text(
                  'Tera bulawa aya h ma',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                
                //SizedBox(width:45,),
                SvgPicture.asset("assets/icons/download.svg"),
                // SvgPicture.asset("assets/icons/play_outline.svg"),
                // Row(
                //   children: [
                //     SvgPicture.asset("assets/icons/heart.svg"),
                //     SizedBox(width: 15,),
                //     SvgPicture.asset("assets/icons/download.svg"),

                //   ],
                // ),
                // SizedBox(
                //   width: 10,
                // ),
                
              ],
            ),
            const SizedBox(height: 10,),
            Row(
                  children: [
                    Text('Jubin Nautiyal',style: Theme.of(context).textTheme.bodySmall,)
                  ],
                )
      ],
    );
  }
}