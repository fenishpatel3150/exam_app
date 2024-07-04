import 'dart:async';

import 'package:exam_app/screen/controller/DataController.dart';
import 'package:exam_app/utils/image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DataController controllerTrue = Provider.of(context);
    DataController controllerFalse = Provider.of(context, listen: false);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Netflix',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                ))
          ],
        ),
        backgroundColor: Colors.black,
        body: GridView.builder(
          itemCount: image.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) => Column(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(image: AssetImage(image[index]['image']),fit: BoxFit.fill),
                ),
              ),
            ],
          ),
        )


    );
  }
}
