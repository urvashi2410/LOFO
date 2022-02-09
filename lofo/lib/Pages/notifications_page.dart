import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';
import 'package:lofo/Widgets/custom_card.dart';
import 'package:lofo/Widgets/widgets.dart';

const String userImg =
    "https://thumbs.dreamstime.com/b/girl-avatar-black-background-cute-cartoon-character-flat-vector-illustration-eps-183978159.jpg";

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bg,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(userImg),
                  ),
                )
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.check_box,
                  color: AppColors().blue,
                ),
                Text(
                  "Mark as Read",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors().blue,
                  ),
                )
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "For Today",
                  style: TextStyle(
                    color: AppColors().grey,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            const Spacer(),
            const CustomCard(
              time: "5 mins ago",
              message: "Your posted lost keys got an owner! Check who?",
              img:
                  "https://images.unsplash.com/flagged/photo-1564767609342-620cb19b2357?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aG91c2UlMjBrZXl8ZW58MHx8MHx8&w=1000&q=80",
            ),
            const Spacer(
              flex: 2,
            ),
            const CustomCard(
              time: "1 hour ago",
              message:
                  "Someone is claiming that he is having your lost headphones!",
              img:
                  "https://images.unsplash.com/photo-1593121925328-369cc8459c08?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGhlYWRwaG9uZXxlbnwwfHwwfHw%3D&w=1000&q=80",
            ),
            const Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "For Yesterday",
                  style: TextStyle(
                    color: AppColors().grey,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "View All Notifications",
                  style: TextStyle(
                      color: AppColors().blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
