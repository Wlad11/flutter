import 'dart:math';

import 'package:flutter/material.dart';

class CustomPageWidget extends StatefulWidget {
  const CustomPageWidget({Key? key}) : super(key: key);

  @override
  _CustomPageWidgetState createState() => _CustomPageWidgetState();
}

class _CustomPageWidgetState extends State<CustomPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          child: const PadialPercentWidget(
            child: Text(
              '72%',
              style: TextStyle(color: Colors.white, fontSize: 19),
            ),
          ),
        ),
      ),
    );
  }
}

class PadialPercentWidget extends StatelessWidget {
  final Widget child;
  const PadialPercentWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CustomPaint(painter: Mypainter()),
        Center(child: child),
      ],
    );
  }
}

class Mypainter extends CustomPainter {
  final double percent = 0.72;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.black;
    paint.style = PaintingStyle.fill;
    canvas.drawOval(Offset.zero & size, paint);

    final filedPaint = Paint();
    filedPaint.color = Colors.yellow;
    filedPaint.style = PaintingStyle.stroke;
    filedPaint.strokeWidth = 5; //ширина полосы
    canvas.drawArc(
      const Offset(2.5, 2.5) & Size(size.width - 5, size.height - 5),
      pi * 2 * percent - (pi / 2),
      pi * 2 * (1.0 - percent),
      false,
      filedPaint,
    );
    //поменял местами для скругления
    final feePaint = Paint();
    feePaint.color = Colors.green;
    feePaint.style = PaintingStyle.stroke;
    feePaint.strokeWidth = 5; //ширина полосы
    feePaint.strokeCap = StrokeCap.round; // закруглит полоску
    canvas.drawArc(
      const Offset(2.5, 2.5) & Size(size.width - 5, size.height - 5),
      -pi / 2,
      pi * 2 * percent,
      false,
      feePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}