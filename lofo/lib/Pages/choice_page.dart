import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';

class ChoicePage extends StatelessWidget {
  const ChoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bg,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Spacer(
              flex: 3,
            ),
            const SizedBox(
              child: Text(
                "What do you want to post?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                     Padding(
                       padding: const EdgeInsets.only(bottom: 15),
                       child: SizedBox(
                        child: Image.asset('assets/Images/lost.png'),
                        height: 90,
                    ),
                     ),
                    const Text(
                      "Lost",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.width / 2,
                  child: VerticalDivider(
                    color: AppColors().grey,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: SizedBox(
                        child: Image.asset('assets/Images/found.png'),
                        height: 90,
                      ),
                    ),
                    const Text(
                      "Found",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Divider(color: AppColors().grey,),
            Spacer(
              flex: 8,
            ),
          ],
        ),
      ),
    );
  }
}
