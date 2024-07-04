import 'dart:convert';
import 'package:exam_app/screen/helper/Apiserver.dart';
import 'package:exam_app/screen/model/Datamodel.dart';
import 'package:flutter/material.dart';

class DataController extends ChangeNotifier {
  List<DataModel> DataList = [];

  List<DataModel> get Datalist => Datalist;

  JsonProvider() {
    getData();
  }

  Future<void> getData() async {
    String? json = await ApiServer().Data();
    List data = await jsonDecode(json!);

    // convert into object data
    DataList = data.map((e) => DataModel.fromJson(e)).toList();

    // Notify listeners after updating the data
    notifyListeners();
  }
}







