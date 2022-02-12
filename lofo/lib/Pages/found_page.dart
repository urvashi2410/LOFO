import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';

class FoundPage extends StatelessWidget {
  const FoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bg,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 7,
              ),
              Icon(
                Icons.check_circle,
                color: Colors.green[400],
                size: 100,
              ),
              const Spacer(),
              const SizedBox(
                child: Text(
                  "IPhone X marked found",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(
                flex: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
