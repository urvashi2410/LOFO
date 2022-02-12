import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';
import 'package:lofo/Widgets/custom_home_card.dart';

const String uImg =
    "https://thumbs.dreamstime.com/b/girl-avatar-black-background-cute-cartoon-character-flat-vector-illustration-eps-183978159.jpg";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().bg,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.notifications,
                  size: 30,
                ),
                const Spacer(),
                Icon(
                  Icons.search,
                  size: 30,
                  color: AppColors().grey,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(uImg),
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            Row(
              children: [
                Text(
                  "Featured",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: MediaQuery.of(context).size.height / 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            NetworkImage("https://picsum.photos/250?image=9"),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(
              flex: 3,
            ),
            Row(
              children: [
                Text(
                  "All",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                CustomHomeCard(
                  img:
                      "https://images.unsplash.com/photo-1528148115836-fb8e9588ec51?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2xvc2VkJTIwbGFwdG9wfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
                ),
                Spacer(),
                CustomHomeCard(
                  img:
                      "https://image.spreadshirtmedia.com/image-server/v1/mp/products/T1453A37MPA3849PT10X13Y33D1042297527FS2020/views/3,width=378,height=378,appearanceId=37,backgroundColor=F2F2F2/lose-mind-careless-or-abstracted-gift-insulated-stainless-steel-water-bottle.jpg",
                )
              ],
            ),
            Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

BottomNavigationBar bottomNavigationBar() {
  return BottomNavigationBar(
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home_outlined,
          size: 30,
          color: AppColors().grey,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.person_outlined,
          size: 30,
          color: AppColors().grey,
        ),
        label: "",
      )
    ],
  );
}
