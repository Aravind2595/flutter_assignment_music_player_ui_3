import 'package:flutter/material.dart';
import 'package:flutter_assignment_music_player_ui_3/seekBar.dart';
import 'package:flutter_assignment_music_player_ui_3/songAdjustBar.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    home: MusicPlayerScreen(),
  ));
}

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        color: const Color(0XFF1a1a1a),
        child: ListView(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Color(0xFFff80aa),
                  size: 30,
                ),
              ),
              Text("Now playing",
                  style: GoogleFonts.ubuntu(
                      color: const Color(0xFFff80aa),
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
              const SizedBox(),
              const SizedBox()
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 300,
                height: 300,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/weekend.jpg"))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: Text(
                  "Weekend",
                  style: GoogleFonts.ubuntu(
                      color: const Color(0xFFff80aa),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  "Starboy",
                  style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top:20,right: 20,left: 20,bottom: 10),
              child: SeekBarCreation(),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Text(
                  "00.03",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "03:21",
                  style: TextStyle(color: Colors.white),
                )
              ]),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: SongBar(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,left:135),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text("Playlist",style: GoogleFonts.ubuntu(
                      color: const Color(0xFFff80aa)
                    ),),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text("|",style: TextStyle(color: Colors.white),),
                  ),
                  Text("Lyrics",style: GoogleFonts.ubuntu(
                    color:  const Color(0xFFff80aa)
                  ),),
                  const SizedBox()
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
