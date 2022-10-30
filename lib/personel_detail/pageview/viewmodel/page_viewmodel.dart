import 'package:flutter/material.dart';

import '../model/page_model.dart';
import '../view/onboard_view.dart';

abstract class PageViewModel extends State<OnBoardView> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  List<PageModel> pageViewModelList = [
    PageModel(const Card(
        child: Padding(
      padding: EdgeInsets.all(18.0),
      child: Text(
        'Ferhat',
        style: TextStyle(fontSize: 20),
      ),
    ))),
    PageModel(const Card(
        color: Colors.red,
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Text(
            'Safa',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ))),
    PageModel(const Card(
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Text(
            'Alper',
            style: TextStyle(fontSize: 20),
          ),
        ))),
  ];
}
