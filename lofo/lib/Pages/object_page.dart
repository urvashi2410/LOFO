import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';
import 'package:lofo/Widgets/widgets.dart';

const String img =
    'https://www.businessinsider.in/photo/86623776/best-budget-dual-sim-mobile-phones-in-india.jpg';
const String user =
    'https://upload.wikimedia.org/wikipedia/commons/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg';

class ObjectPage extends StatelessWidget {
  const ObjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(img),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: NetworkImage(user),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "FlyDeck",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "IPhone X",
                        style: TextStyle(
                          color: AppColors().darkBlue,
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                      Icon(Icons.share),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on_outlined),
                      Text(
                        "Sport Complex Gym",
                        style: TextStyle(
                          color: AppColors().green,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "iPhone X found here near auditorium. In a good condition with a headset plugged in it.  Please contact me to get your mobile. I am FlyDeck from Mars and hope you are well and fine",
                style: TextStyle(
                  color: AppColors().grey,
                  fontSize: 16,
                ),
              ),
            ),
            const Spacer(
              flex: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: CustomButton(
                title: "Found it Similar?",
                color: AppColors().google_sign_in_color,
              ),
            )
          ],
        ),
      ),
    );
  }
}
