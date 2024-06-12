import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertask/theme/app_pallete.dart';

class MyCustomCard extends StatefulWidget {
  final int index;

  MyCustomCard(this.index);

  @override
  State<MyCustomCard> createState() => _MyCustomCardState();
}

class _MyCustomCardState extends State<MyCustomCard> {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: MediaQuery.of(context).size.width,
        height: _isExpanded ? 600 : 400,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: AppPallete.green1,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Text(
                      'Order ID: 46736364',
                      style: TextStyle(color: Colors.white, fontSize: 13.0),
                    ),
                    Spacer(),
                    Icon(
                      Icons.timer_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    Text('5 Min Ago',
                        style: TextStyle(color: Colors.white, fontSize: 13.0))
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      color: AppPallete.white1,
                      child: Column(
                        children: [
                          Center(
                            child: Padding(
                              padding:  EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Title',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 15.0,fontWeight: FontWeight.bold),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 30.0),
                                          child: Text(
                                            'Q',
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 15.0,fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Text(
                                          'Price',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 15.0,fontWeight: FontWeight.bold),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Capsicum 500gm',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 15.0),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 30.0),
                                          child: Text(
                                            '5',
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 15.0),
                                          ),
                                        ),
                                        Text(
                                          '₹120',
                                          style: TextStyle(
                                            color: Colors.black, fontSize: 15.0,),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Tomato Ketchup 500gm',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 15.0),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 30.0),
                                          child: Text(
                                            '5',
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 15.0),
                                          ),
                                        ),
                                        Text(
                                          '₹120',
                                          style: TextStyle(
                                            color: Colors.black, fontSize: 15.0,),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Total',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 15.0,fontWeight: FontWeight.bold),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 30.0),
                                          child: Text(
                                            '10',
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 15.0,fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Text(
                                          '₹240',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 15.0,fontWeight: FontWeight.bold),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Divider(height: 25,),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Row(children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 20.0),
                                        child: Icon(Icons.people_alt_outlined),
                                      ),
                                      Text('Customer info',
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                      Spacer(),
                                      ElevatedButton(
                                        child: Icon(_isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down_outlined),
                                        onPressed: _toggleExpand,

                                      ),

                                    ],),
                                  )

                                ],
                              ),
                            ),
                          ),
                          if (_isExpanded)
                            Container(
                              width: MediaQuery.of(context).size.width,
                              color: Colors.white,
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Customer Info',
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 15.0,fontWeight: FontWeight.bold),
                                          ),
                                          Spacer(),


                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Ayush Mittal',
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 15.0),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10.0),
                                            child: Text(
                                              '56557889',
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 15.0),
                                            ),
                                          ),


                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            'AB 417 MNIT Jaipur , Malviya nagar',
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 15.0),
                                          ),


                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Payment Mode',
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 15.0,fontWeight: FontWeight.bold),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10.0),
                                            child: Text(
                                              'Cash on delivery',
                                              style: TextStyle(
                                                  color: Colors.black, fontSize: 15.0,fontWeight: FontWeight.bold),
                                            ),
                                          ),


                                        ],
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: DottedLine(),
            ),

            //last action buttons....
            Container(
              color:AppPallete.white1,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      //add cancel button function here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppPallete.white1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                        side: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child:const  Padding(
                      padding: EdgeInsets.all(18),
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Add some spacing between buttons
                  ElevatedButton(
                    onPressed: () {
                      // Add your proceed button functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppPallete.green1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.green),
                      ),
                    ),
                    child: const Padding(
                      padding:  EdgeInsets.all(14.0),
                      child: Text(
                        'Proceed Order',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
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
