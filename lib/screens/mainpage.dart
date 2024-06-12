import 'package:flutter/material.dart';
import 'package:fluttertask/screens/homepage.dart';
import 'package:fluttertask/screens/orderpage.dart';
import 'package:fluttertask/screens/productpage.dart';
import 'package:fluttertask/screens/profilepage.dart';
import 'package:fluttertask/theme/app_pallete.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    OrderPage(),
    ProductPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.white1,

      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
     bottomNavigationBar: Container(
       height: 80,
       child: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
           items: const<BottomNavigationBarItem>[
         BottomNavigationBarItem(
           icon: Icon(Icons.home),
           label: 'Home',
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.shopping_basket),
           label: 'Order',
         ),
         BottomNavigationBarItem(

           icon: Icon(Icons.shopping_bag_outlined),
           label: 'Product',
         ),
             BottomNavigationBarItem(
               icon: Icon(Icons.person),
               label: 'Profile',
             ),
                  ],
                  currentIndex: _selectedIndex,
                  unselectedItemColor: AppPallete.background,
                  selectedItemColor: AppPallete.green1,
                  onTap: _onItemTapped,),
     ),
    );
  }
}
