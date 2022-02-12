import 'package:flutter/material.dart';
import 'package:lofo/Constant/colors.dart';
import 'package:lofo/Widgets/widgets.dart';

const String url =
    'https://images.thefacecdn.com/images/13.-GettyImages-1130598318.jpg?fit=crop&crop=focalpoint&fp-x=0.5&fp-y=0.5&w=1180';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Post",
            style: TextStyle(color: AppColors().darkBlue),
          ),
          centerTitle: true,
          backgroundColor: AppColors().bg,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
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
