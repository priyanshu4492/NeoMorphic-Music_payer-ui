import 'package:flutter/material.dart';
import 'package:music_player/utils/morphic_cart.dart';
import 'package:music_player/utils/player_container.dart';
import 'package:music_player/utils/player_control.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            //top app bar icons
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MorphicCart(height: 60, width: 60, icons: Icons.menu),
                  Text(
                    "PLAYLIST",
                    style: TextStyle(color: Colors.grey[700], fontSize: 20),
                  ),
                  Icon(Icons.change_history),
                ],
              ),
            ),
            SizedBox(height: 20),

            //play screen
            PlayerContainer(),
            SizedBox(height: 15),
            //4 icon sections
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MorphicCart(height: 50, width: 50, icons: Icons.timeline),
                  MorphicCart(height: 50, width: 50, icons: Icons.shuffle),
                  MorphicCart(height: 50, width: 50, icons: Icons.repeat),
                  MorphicCart(height: 50, width: 50, icons: Icons.headphones),
                ],
              ),
            ),
            SizedBox(height: 15),
            //player level
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 20,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    //bottomright
                    BoxShadow(
                      color: Colors.grey.shade600,
                      offset: Offset(4, 4),
                      spreadRadius: 1,
                      blurRadius: 5,
                    ),
                    //topleft
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4, -4),
                      spreadRadius: 1,
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 5,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ),

            //pause play next button
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PlayerControl(image: 'assets/images/previous-track.png'),
                  PlayerControl(image: 'assets/images/pause.png'),
                  PlayerControl(image: 'assets/images/next.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
