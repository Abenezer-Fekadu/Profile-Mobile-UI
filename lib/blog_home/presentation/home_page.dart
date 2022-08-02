import 'package:blog_app/blog_home/presentation/constants/colors.dart';
import 'package:blog_app/blog_home/presentation/widgets/big_text.dart';
import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  static const String routeName = "/home_page";

  const MainHomePage({Key? key}) : super(key: key);

  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, bottom: 10),
            padding: const EdgeInsets.only(left: 10, right: 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.black,
                      size: 25.0,
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: BigText(text: "Profile", size: 18),
                ),
              ],
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
