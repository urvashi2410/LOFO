import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';

class CustomCard extends StatelessWidget {
  final String time;
  final double width;
  final double height;
  final String img;
  const CustomCard({
    Key? key,
    required this.time,
    required this.width,
    required this.height,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          
        ),
      ),
    );
  }
}
