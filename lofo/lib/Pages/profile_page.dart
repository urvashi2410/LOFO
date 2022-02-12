import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';
import 'package:lofo/Widgets/widgets.dart';

const String url =
    'https://images.thefacecdn.com/images/13.-GettyImages-1130598318.jpg?fit=crop&crop=focalpoint&fp-x=0.5&fp-y=0.5&w=1180';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bg,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 25,
        ),
        child: Column(
          children: [
            const Spacer(),
            CircleAvatar(
              radius: 85,
              backgroundImage: NetworkImage(url),
            ),
            const Spacer(),
            Text(
              "Narender Modi",
              style: TextStyle(
                color: AppColors().darkBlue,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Joined March 2021",
              style: TextStyle(
                color: AppColors().grey,
                fontSize: 16,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Posted",
                            style: TextStyle(
                              color: AppColors().bg,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "11",
                            style: TextStyle(
                              color: AppColors().bg,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    height: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors().yellow,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Found",
                            style: TextStyle(
                              color: AppColors().bg,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "9",
                            style: TextStyle(
                              color: AppColors().bg,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    height: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors().green,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
