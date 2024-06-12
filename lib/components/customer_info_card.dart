import 'package:flutter/material.dart';
import 'package:fluttertask/theme/app_pallete.dart';

class CustomerCard extends StatelessWidget {
  const CustomerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 500,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppPallete.white1),
        child: ListTile(
          title: Text('title'),
          subtitle: Text('subtitle'),
          leading: Icon(Icons.star_border_sharp),
          trailing: IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ));
  }
}
