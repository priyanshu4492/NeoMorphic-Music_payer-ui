import 'package:flutter/material.dart';

class PlayerContainer extends StatefulWidget {
  const PlayerContainer({super.key});

  @override
  State<PlayerContainer> createState() => _PlayerContainerState();
}

class _PlayerContainerState extends State<PlayerContainer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        padding: EdgeInsets.all(12),

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
        child: Column(
          children: [
            Container(
              height: 300,
              width: 300,

              child: Image.asset(
                'assets/images/image3.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sun Mere Hamsafar",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Text(
                        "90s Lover",
                        style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold,fontSize: 20),
                      ),
                    ],
                  ),
                  Image.asset('assets/images/letter.png',scale: 10,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
