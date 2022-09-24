import 'package:flutter/material.dart';
import 'package:micro/CateGoryAPI.dart';
import 'package:micro/Profile.dart';
import 'package:micro/ShoppingHome.dart';
import 'API.dart';
import 'Hotels.dart';

class Navigatorr extends StatefulWidget {
  const Navigatorr({Key? key}) : super(key: key);

  @override
  State<Navigatorr> createState() => _NavigatorrState();
}

class _NavigatorrState extends State<Navigatorr> {
  int currentIndex=0;
  List Slider=[

    const ShophomeAPI(),
    const CateGoryAPI(),
    const Profile(),

  ];
  List titles=[
    "Home",
    "CateGory",
    "My Profile",

  ];
  void tapped(int index) {
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(224, 0, 8, 1),
        centerTitle: true,
        title: Text(titles[currentIndex]),
      ),
      body: Slider[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: tapped,
        backgroundColor: Colors.white12,
        selectedItemColor: const Color.fromRGBO(224, 0, 8, 1),
        unselectedItemColor:const Color.fromRGBO(224, 0, 8, 1),
        selectedFontSize: 25,
        unselectedFontSize: 15,
        type:BottomNavigationBarType.shifting ,
        currentIndex: currentIndex,
        items: const [

        BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: Color.fromRGBO(224, 0, 8, 1),),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.category,color: Color.fromRGBO(224, 0, 8, 1),),label: "Category",),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Color.fromRGBO(224, 0, 8, 1),),label: "Profile",),

        ],
      ),

    );
  }
}
