import 'package:flutter/material.dart';
import 'package:fluttertask/theme/app_pallete.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppPallete.background,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: AppBar(
            backgroundColor: AppPallete.white1,
            
            elevation: 1,
            title: Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppPallete.background,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.view_headline_sharp),
                    )),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Shop',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        body: Center(child: Text('home')),
      ),
    );
  }
}
