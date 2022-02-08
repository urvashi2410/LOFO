import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';
import 'package:lofo/Widgets/custom_card.dart';
import 'package:lofo/Widgets/widgets.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bg,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20,
                  child: Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngitem.com%2Fso%2Favatar%2F&psig=AOvVaw2R8s3sl4XIMV1a-adQiASe&ust=1644414495442000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCLDsy8Of8PUCFQAAAAAdAAAAABAD'),
                )
              ],
            ),
            Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.check_box,
                  color: AppColors().blue,
                ),
                Text(
                  "Mark as Read",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors().blue,
                  ),
                )
              ],
            ),
            Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "For Today",
                  style: TextStyle(
                    color: AppColors().grey,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            Spacer(
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle,
                  color: AppColors().blue,
                ),

                Stack(
                  children: [
                    Container(
                      
                      child: Image.network('https://media.istockphoto.com/photos/keys-on-a-ring-with-blue-house-keychain-picture-id471346247?b=1&k=20&m=471346247&s=170667a&w=0&h=B-o7CJP04RVMYNSU5_EhJi3Vz75GLAGM1n5ddwv4GnY='),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        "5 mins ago",
                        style: TextStyle(
                          color: AppColors().grey,
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
