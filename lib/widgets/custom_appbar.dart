import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomAppbar extends StatelessWidget {

final SizingInformation? sizingInformation ;

  const CustomAppbar({super.key, required this.sizingInformation});

  @override
  Widget build(BuildContext context) {
    return  Container(

        color: Colors.white,
        height: sizingInformation!.screenSize.height * 0.08,
        padding: EdgeInsets.only(top: 5,left: 5),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: 
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      
                      image: DecorationImage(image: AssetImage('assets/profile1.jpg')),
                    ),
                  ),
                ),

                Container(
                  height: 40,
                  width: sizingInformation!.screenSize.width/ 1.40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFFEF3F7)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF666666 ),
                      )
                    ),
                  ),
                ),
                Icon(FontAwesomeIcons.solidCommentDots,
                color: Color(0xFF666666),)
              ],
            )
          ],
        ),

    );
  }
}