import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertask/theme/app_pallete.dart';

import '../components/customcard.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(

          appBar: AppBar(
            backgroundColor: AppPallete.white1,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(25),
              child: TabBar(
                isScrollable: false,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2, color: AppPallete.green1),
                ),
                indicatorColor: AppPallete.green1,
                tabs: [
                  Tab(
                    child: FittedBox(
                      child: Row(
                        children: [
                          Icon(Icons.shopping_bag_outlined,),
                          Text(' Order')
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.fire_truck_outlined),
                          Text(' Shipping')
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: FittedBox(
                      child: Row(
                        children: [
                          Icon(Icons.cancel_outlined),
                          FittedBox(child: Text(' Return'))
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: FittedBox(
                      child: Row(
                        children: [
                          Icon(Icons.done_outline_sharp),
                          FittedBox(child: Text(' Completed'))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          backgroundColor: AppPallete.white1,
          body: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppPallete.white1,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppPallete.grey),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text('Live'),
                            SizedBox(width: 10,),
                            Icon(Icons.live_tv, size: 19,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppPallete.white1,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppPallete.grey),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text('Pending'),
                            SizedBox(width: 10,),
                            Icon(Icons.timer_outlined, size: 19,),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(10, (index) {
                      // Return your custom card widget instead of ListTile
                      return MyCustomCard(index);
                    }),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
