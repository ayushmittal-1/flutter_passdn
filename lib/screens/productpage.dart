import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'My Grid',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          ResponsiveGrid(),
        ],
      )
    );
  }
}

class ResponsiveGrid extends StatelessWidget {
  final List<String> griditems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                griditems[index],
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        );
      },
    );
  }
}