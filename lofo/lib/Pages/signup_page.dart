import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';
import 'package:lofo/Widgets/widgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bg,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: Column(
          children: [
            const Spacer(),
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                'https://williepatersonlivestock.co.uk/wp-content/uploads/2022/01/D1F7A7AA-E958-4B7C-87F4-99BB66383D1D.png',
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Text(
              "Sign Up",
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
              "Create An Account. It's Free",
              style: TextStyle(
                color: AppColors().grey,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            CustomTextInput(hintText: "Name"),
            const Spacer(),
            CustomTextInput(hintText: "Email"),
            const Spacer(),
            CustomTextInput(hintText: "Mobile Number"),
            const Spacer(),
            CustomTextInput(hintText: "Password"),
            const Spacer(),
            CustomTextInput(hintText: "Confirm Password"),
            const Spacer(
              flex: 5,
            ),
            CustomButton(
              onPressFunction: () {},
              title: "Create An Account",
              color: AppColors().blue,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an Account? ",
                  style: TextStyle(color: Colors.grey[800], fontSize: 15),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
