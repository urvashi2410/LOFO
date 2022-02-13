import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';
import 'package:lofo/Widgets/widgets.dart';

const String url =
    'https://williepatersonlivestock.co.uk/wp-content/uploads/2022/01/D1F7A7AA-E958-4B7C-87F4-99BB66383D1D.png';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Post",
            style: TextStyle(
              color: AppColors().darkBlue,
            ),
          ),
          centerTitle: true,
          backgroundColor: AppColors().bg,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomObjectList(
                    title: "Iphone X",
                    img: url,
                    location: "DTU Library",
                    user: "FlyDeck",
                    username: "FlyDeck",
                    date: "12 June 2021",
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomObjectList(
                    title: "Iphone X",
                    img: url,
                    location: "DTU Library",
                    user: "FlyDeck",
                    username: "FlyDeck",
                    date: "12 June 2021",
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomObjectList(
                    title: "Iphone X",
                    img: url,
                    location: "DTU Library",
                    user: "FlyDeck",
                    username: "FlyDeck",
                    date: "12 June 2021",
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomObjectList(
                    title: "Iphone X",
                    img: url,
                    location: "DTU Library",
                    user: "FlyDeck",
                    username: "FlyDeck",
                    date: "12 June 2021",
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomObjectList(
                    title: "Iphone X",
                    img: url,
                    location: "DTU Library",
                    user: "FlyDeck",
                    username: "FlyDeck",
                    date: "12 June 2021",
                  ),
                ),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
