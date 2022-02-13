import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';
import 'package:lofo/Widgets/widgets.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({Key? key}) : super(key: key);

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
                "assets/images/success.png",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Successfully Posted",
              style: TextStyle(
                color: AppColors().green,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Text(
              "You post will be visible now",
              style: TextStyle(
                color: AppColors().grey,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: CustomButton(
                title: "Continue",
                color: AppColors().green,
                onPressFunction: () {},
              ),
            ),

          ],
        ),
      ),
    );
  }
}
