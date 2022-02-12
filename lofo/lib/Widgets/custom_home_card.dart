import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';

class CustomHomeCard extends StatelessWidget {
  final String img;
  const CustomHomeCard({
    Key? key,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 5,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(img),
          ),
        ),
      ),
    ]);
  }
}
