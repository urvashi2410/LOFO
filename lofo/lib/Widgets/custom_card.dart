import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';

class CustomCard extends StatelessWidget {
  final String time;
  final String message;
  final String img;
  const CustomCard({
    Key? key,
    required this.time,
    required this.message,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.circle,
            size: 12,
            color: AppColors().blue,
          ),
          Stack(
            children: [
              Opacity(
                opacity: 0.5,
                child: Image(
                  width: MediaQuery.of(context).size.width / 1.2,
                  image: NetworkImage(
                      img),
                  height: MediaQuery.of(context).size.height / 5,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                right: 20.0,
                top: 5,
                child: Text(
                  time,
                  style: TextStyle(
                    color: AppColors().grey,
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                left: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    message,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors().darkBlue,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
    );
  }
}
