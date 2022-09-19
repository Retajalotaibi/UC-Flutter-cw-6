import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../models/item.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key, required this.detailedItem});
  final Item detailedItem;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(detailedItem.name),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                minRadius: 48,
                maxRadius: 85,
                backgroundImage: NetworkImage(detailedItem.imageURL),
              ),
              Container(
                padding: EdgeInsets.all(40),
                child: Text(detailedItem.name, style: TextStyle(fontSize: 20)),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  detailedItem.description,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
