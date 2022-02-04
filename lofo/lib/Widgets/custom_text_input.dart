import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';

class CustomTextInput extends StatelessWidget {
  final String hintText;
  const CustomTextInput({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        color: Colors.grey[200],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: AppColors().grey,
          ),
          contentPadding: EdgeInsets.only(
            left: 40,
          ),
        ),
      ),
    );
  }
}
