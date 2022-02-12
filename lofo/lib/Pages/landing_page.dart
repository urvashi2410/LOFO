import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';
import 'package:lofo/Widgets/widgets.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bg,
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 25,
        ),
        child: Column(
          children: [
            const Spacer(
              flex: 4,
            ),
            Text(
              "Welcome",
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
              "Discover your lost object here or",
              style: TextStyle(
                color: AppColors().grey,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "post a found object..",
              style: TextStyle(
                color: AppColors().grey,
                fontSize: 16,
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            CircleAvatar(
              radius: 85,
              backgroundImage: NetworkImage(
                  'https://williepatersonlivestock.co.uk/wp-content/uploads/2022/01/D1F7A7AA-E958-4B7C-87F4-99BB66383D1D.png'),
            ),
            const Spacer(
              flex: 5,
            ),
            CustomButton(
              onPressFunction: () {},
              title: "Login",
              color: AppColors().blue,
            ),
            const Spacer(),
            CustomButton(
              onPressFunction: () {},
              isTransparent: true,
              title: "Sign up",
              color: AppColors().blue,
            )
          ],
        ),
      ),
    );
  }
}
