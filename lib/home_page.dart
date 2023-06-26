import 'package:assignment_task/card_page.dart';
import 'package:assignment_task/my_home_page.dart';
import 'package:assignment_task/news_page.dart';
import 'package:assignment_task/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  var arrData=[
    MyHomePage(),
    CardPage(),
    NewsPage(),
    ProfilePage()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: arrData[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
        unselectedFontSize: 14,
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        onTap: (index){
          _selectedIndex=index;
          setState(() {

          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.blueGrey,size: 32,),
            label: 'Home',
            activeIcon: Icon(Icons.home,color: Colors.blueAccent,size: 32,)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_outlined,color: Colors.blueGrey,size: 32,),
            label: 'Card',
            activeIcon:Icon(Icons.credit_card_outlined,color: Colors.blue,size: 32,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv,color: Colors.blueGrey,size: 32,),
            label: 'News',
            activeIcon: Icon(Icons.live_tv,color: Colors.blue,size: 32,)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin,color: Colors.blueGrey,size: 32,),
            label: 'Profile',
            activeIcon:  Icon(Icons.person_pin,color: Colors.blue,size: 32,),
          ),
        ],
      ),
    );
  }
}
