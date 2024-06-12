import 'package:flutter/material.dart';
import 'package:fluttertask/models/objects/cancelledorder.dart';
import 'package:fluttertask/models/objects/instockproduct.dart';
import 'package:fluttertask/models/objects/onlineorder.dart';
import 'package:fluttertask/models/objects/outofstockproduct.dart';
import 'package:fluttertask/models/objects/returnorder.dart';
import 'package:fluttertask/models/objects/totalrevenue.dart';
import 'package:fluttertask/theme/app_pallete.dart';

class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> griditems = [
      Totalrevenue().name,
      OnlineOrder().name,
      ReturnOrder().name,
      CancelOrder().name,
      InstockProduct().name,
      OutofstockProduct().name,
    ];
    return Column(
      children: [
        GridView.builder(
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(8.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 columns
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 2 / 1, // Adjust the aspect ratio as needed
          ),
          itemCount: griditems.length,
          itemBuilder: (context, index) {
            return GridTile(
              child: Container(
                color: AppPallete.green1,


                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(width: 1.5,color: AppPallete.green1)
                        )
                    ),
                    child: Text(
                      griditems[index],
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
