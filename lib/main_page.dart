import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin/screens/home_page/home_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

int _currentIndex = 0;

final List<Widget> _children = [
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
];

void onTabTapped (int index){
  if(index ==2){
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>PostPage()));
  }

  setState(() {
    _currentIndex = index;
  });
}
  @override
  Widget build(BuildContext context) {
    return  ResponsiveBuilder(
      builder: (context, SizingInformation){
        
        return SafeArea(child: Scaffold(
          bottomNavigationBar: BottomNavigationBar( 
             backgroundColor: Colors.white,
          iconSize: 22,
          unselectedItemColor: Color(0xFF666666),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          selectedItemColor: Colors.black,
          showSelectedLabels: true,
          onTap: onTabTapped,
          currentIndex:  _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.house_fill,
            size: 25,),
            label: "Home"),


            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.userGroup,
            size: 25,),
            label: "My Network"),

              BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.solidSquarePlus,
            size: 25,),
            label: "Post"),

             BottomNavigationBarItem(icon: Icon(CupertinoIcons.bell_fill,
            size: 25,),
            label: "Notifications"),
   BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.briefcase,
            size: 25,),
            label: "Jobs"),

          ],
            
          ),

          body: _children[_currentIndex],
         
        
        )
        );
      },


    );
  }
}