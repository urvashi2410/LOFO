import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';
import 'package:lofo/Widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bg,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
        child: Column(
          children: [
            Spacer(),
            CircleAvatar(
              radius: 85,
              backgroundImage: NetworkImage(
                  'https://williepatersonlivestock.co.uk/wp-content/uploads/2022/01/D1F7A7AA-E958-4B7C-87F4-99BB66383D1D.png'),
            ),
            Spacer(flex: 4,),
            Text(
              "Login Now",
              style: TextStyle(
                color: AppColors().darkBlue,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Please enter the details below to continue..",
              style: TextStyle(
                color: AppColors().grey,
                fontSize: 16,
              ),
            ),
            Spacer(flex: 4,),
            CustomTextInput(
              hintText: "Enter your email",
            ),
            Spacer(flex: 2,),
            CustomTextInput(
              hintText: "Enter your password",
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "forgot password?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Spacer(flex: 5,),
            CustomButton(
              title: "Login",
              color: AppColors().blue,
            ),
            Spacer(),
            CustomButton(
              title: "Login with Google",
              color: AppColors().google_sign_in_color,
            )
          ],
        ),
      ),
    );
  }
}
