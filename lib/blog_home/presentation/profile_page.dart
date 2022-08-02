import 'package:blog_app/blog_home/presentation/constants/colors.dart';
import 'package:blog_app/blog_home/presentation/widgets/big_text.dart';
import 'package:blog_app/blog_home/presentation/widgets/button.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static const String routeName = "/profile";

  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                margin: const EdgeInsets.only(top: 25, bottom: 15),
                padding: const EdgeInsets.only(right: 40),
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
            ),
            Container(
              height: screenHeight / 2.56,
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 7,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: screenHeight / 4.75,
                    margin: const EdgeInsets.only(left: 40, right: 30, top: 20),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  width: 4,
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                ),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                                    )),
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                  ),
                                  child: const Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  ),
                                )),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigText(text: "Nati B", size: 18),
                              const SizedBox(height: 10),
                              BigText(
                                  text: "Ux Designer",
                                  size: 16,
                                  color: Colors.blue),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: screenHeight / 2.56,
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 7,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
