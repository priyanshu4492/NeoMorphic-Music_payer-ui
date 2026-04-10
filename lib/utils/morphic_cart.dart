import 'package:flutter/material.dart';

class MorphicCart extends StatefulWidget {
  final double height;
  final double width;
  final dynamic icons;
  const MorphicCart({super.key, required this.height, required this.width,required this.icons});

  @override
  State<MorphicCart> createState() => _MorphicCartState();
}

class _MorphicCartState extends State<MorphicCart> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: widget.height,
        width: widget.width,
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
        child: Icon(widget.icons),
      ),
    );
  }
}
