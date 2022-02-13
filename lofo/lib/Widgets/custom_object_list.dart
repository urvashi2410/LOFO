import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';

class CustomObjectList extends StatelessWidget {
  final String title;
  final String img;
  final String location;
  final String user;
  final String username;
  final String date;
  const CustomObjectList({
    Key? key,
    required this.title,
    required this.img,
    required this.location,
    required this.user,
    required this.username,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.width / 3,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundImage: NetworkImage(img),
                        ),
                        SizedBox(width: 5,),
                        Text(
                          user,
                          style: TextStyle(
                            color: AppColors().darkBlue,
                            fontWeight: FontWeight.bold,
                            // fontSize: 16
                          ),
                        ),
                        
                        Text(
                          date,
                          style: TextStyle(
                            color: AppColors().green,
                            fontWeight: FontWeight.bold,
                            // fontSize: 16
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    title,
                    style: TextStyle(
                        color: AppColors().darkBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                  const Spacer(),
                  Text(
                    location,
                    style: TextStyle(
                      color: AppColors().green,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  '$img',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
