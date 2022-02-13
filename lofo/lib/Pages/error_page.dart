import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';
import 'package:lofo/Widgets/widgets.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                "assets/images/fail.png",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Something went wrong",
              style: TextStyle(
                color: AppColors().google_sign_in_color,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Please try again later",
              style: TextStyle(
                color: AppColors().grey,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: CustomButton(
                title: "Back to Home",
                color: AppColors().google_sign_in_color,
                onPressFunction: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
