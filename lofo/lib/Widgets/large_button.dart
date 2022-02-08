import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  final bool isTransparent;
  const CustomButton({
    Key? key,
    required this.title,
    required this.color,
    this.isTransparent = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: isTransparent == false
              ? MaterialStateProperty.all(
                  color,
                )
              : MaterialStateProperty.all(
                  Colors.white,
                ),
          shape: MaterialStateProperty.all(
            StadiumBorder(
              side: BorderSide(
                color: color,
                width: 1.5,
              ),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          title,
          style:  TextStyle(
            color: isTransparent == false?  Colors.white : AppColors().darkBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
