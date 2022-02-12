import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';

const String uImg =
    "https://thumbs.dreamstime.com/b/girl-avatar-black-background-cute-cartoon-character-flat-vector-illustration-eps-183978159.jpg";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bg,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.notifications,
                  size: 30,
                ),
                Spacer(),
                Icon(
                  Icons.search,
                  size: 30,
                  color: AppColors().grey,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(uImg),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
