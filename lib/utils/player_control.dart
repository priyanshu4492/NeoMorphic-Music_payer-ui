import 'package:flutter/material.dart';
class PlayerControl extends StatefulWidget {
  final String image;
  const PlayerControl({super.key,required this.image});

  @override
  State<PlayerControl> createState() => _PlayerControlState();
}

class _PlayerControlState extends State<PlayerControl> {
  @override
  Widget build(BuildContext context) {
    return  Container(
                  height: 70,
                  width: 70,
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
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Image.asset(widget.image,color: Colors.grey[600],),
                  ),
                );
  }
}