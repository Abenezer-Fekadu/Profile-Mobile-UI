import 'package:blog_app/blog_home/presentation/constants/colors.dart';
import 'package:blog_app/blog_home/presentation/widgets/big_text.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final String topic;
  final String subtitle;
  final String image;
  final String date;

  const CardView({
    Key? key,
    required this.topic,
    required this.date,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.45;
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(
        right: height * 0.02,
        bottom: 20,
      ),
      height: height * 0.45,
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: height * 0.01,
                offset: Offset(0, height * 0.007)),
          ],
          borderRadius: BorderRadius.circular(height * 0.03)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(height * 0.04),
                child: Image(
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  height: height * 0.5,
                  width: width * 0.3,
                  image: NetworkImage(
                    image,
                  ),
                )),
          ),
          SizedBox(width: width * 0.05),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.04,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: topic,
                      color: AppColors.txtColor,
                      size: 15,
                    ),
                    SizedBox(
                      height: height * 0.011,
                    ),
                    SizedBox(
                      width: width * 0.4,
                      height: height * 0.11,
                      child: BigText(
                        text: subtitle,
                        color: Colors.black,
                        size: 8,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.11,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.punch_clock_rounded,
                        color: AppColors.txtColor),
                    Text(
                      date,
                      style: TextStyle(
                          fontSize: height * 0.04, color: AppColors.txtColor),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: height * 0.11),
                      child: const Icon(
                        Icons.bookmark,
                        color: AppColors.txtColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.topRight,
              child: PopupMenuButton(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.1),
                        width: height * 0.000001),
                  ),
                  itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                        PopupMenuItem(
                          child: ListTile(
                            leading:
                                const Icon(Icons.edit_note_outlined, size: 12),
                            title: BigText(text: 'Edit', size: 12),
                          ),
                        ),
                        PopupMenuItem(
                          child: ListTile(
                            leading: const Icon(Icons.delete_outline_sharp,
                                size: 12),
                            title: BigText(text: 'Delete', size: 12),
                          ),
                        ),
                      ]),
            ),
          )
        ],
      ),
    );
  }
}
