import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertask/components/bar%20graph/bar_graph.dart';


import 'package:fluttertask/theme/app_pallete.dart';

import '../components/grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<double> weeklySummary = [
    40.40,
    25,
    50,
    40,
    21,
    56,
    4,
  ];

  String dropdownvalue = 'Weekly';

  // List of items in our dropdown menu
  var items = [
    'Weekly',
    'Monthly',
    'Yearly',

  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppPallete.white1,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: AppBar(
            backgroundColor: AppPallete.white1,

            elevation: 1,
            title: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
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
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //product sale
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 10,bottom: 15,),
                  child: Row(
                    children: [
                      Text('Product Sales',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            
            
                    ],
            
                  ),
                ),
                //total product sales +  dropdown of weekly monthly yearly
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,bottom: 8,left: 35),
                  child: Row(
                    children: [
                      Text('Total Product Sales',
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: AppPallete.grey),),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: DropdownButton(
            
                          // Initial value
                          value: dropdownvalue,
            
                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),
            
                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
            
                    ],
                  ),
                ),
                //graph plot
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  color: AppPallete.white1,
                  child: MyBarGraph(
                    weeklySummary: weeklySummary,
                  ),
                ),
                //grid of items
                 Padding(
                   padding: const EdgeInsets.only(top: 15.0),
                   child: Grid(),
                 )







            
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
