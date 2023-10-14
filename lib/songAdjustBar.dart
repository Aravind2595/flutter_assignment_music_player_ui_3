import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SongBar extends StatelessWidget {
  const SongBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: const Color(0XFF1a1a1a),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Icon(Icons.file_download,color: Color(0xFFff80aa),size: 30,),
                  ),
                  FaIcon(FontAwesomeIcons.volumeXmark,color: Colors.white,size: 25,),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: FaIcon(FontAwesomeIcons.shuffle,color: Colors.white,size: 25,),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: FaIcon(FontAwesomeIcons.backwardStep,color: Colors.white,size: 40,),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: FaIcon(FontAwesomeIcons.circlePause,color: Color(0xFFff80aa),size: 60,),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: FaIcon(FontAwesomeIcons.forwardStep,color: Colors.white,size: 40,),
                ),
                FaIcon(FontAwesomeIcons.repeat,color: Colors.white,size: 25,),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right:10),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: FaIcon(FontAwesomeIcons.star,color: Colors.white,size: 25,),
                  ),
                  Icon(Icons.playlist_play,color: Colors.white,size: 40,)
                ],
              ),
            ),
          ],
        ),
        );

  }
}
