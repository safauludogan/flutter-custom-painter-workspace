import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class CustomPainterView extends StatefulWidget {
  const CustomPainterView({Key? key}) : super(key: key);
  @override
  State<CustomPainterView> createState() => _CustomPainterViewState();
}

class _CustomPainterViewState extends State<CustomPainterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 0.8,
        child: CustomPaint(
          foregroundPainter: DemoPainter(),
          child: Image.asset('assets/image/body.png'),
        ),
      ),
    ));
  }
}

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    debugPrint("Width : " + (size.width).toString());
    debugPrint("Width : " + (size.width / 2).toString());
    debugPrint("Width : " + (size.width - 100).toString());
    var centerX = size.width / 1.28; //Konum
    var centerY = size.height / 2; //Konum
    var center = Offset(centerX, centerY);
    var radius = min(centerX, centerY);
    //var line = Off

    //var fillBrush = Paint()..color = const Color(0xff444974);

    /*var outlineBrush = Paint()
      ..color = const Color(0xffeaecff)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 16;*/

    var centerFillBrush = Paint()
      ..color = const Color(0xffeaecff)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    // var secHandBrush =

    //canvas.drawCircle(center, radius - 40, fillBrush);
    //canvas.drawCircle(center, radius - 40, outlineBrush);
    canvas.drawCircle(center, 8, centerFillBrush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}




/*
class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;
    var center = Offset(centerX, centerY);
    var radius = min(centerX, centerY);

    var fillBrush = Paint()..color = const Color(0xff444974);

    var outlineBrush = Paint()
      ..color = const Color(0xffeaecff)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 16;

    var centerFillBrush = Paint()
      ..color = const Color(0xffeaecff)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 16;

    // var secHandBrush =

    canvas.drawCircle(center, radius - 40, fillBrush);
    canvas.drawCircle(center, radius - 40, outlineBrush);
    canvas.drawCircle(center, 16, centerFillBrush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}

*/