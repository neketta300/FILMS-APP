import 'dart:math';

import 'package:flutter/material.dart';

class ProgresBarWidget extends StatefulWidget {
  const ProgresBarWidget({super.key});

  @override
  State<ProgresBarWidget> createState() => _ProgresBarState();
}

class _ProgresBarState extends State<ProgresBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.white, // Установка цвета фона всего приложения на белый
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: const RardialPrecentWidget(
            precent: 0.5,
            lineWidth: 5,
            backgroundColor: Colors.blue,
            underLineColor: Colors.red,
            overLineColor: Colors.green,
            child: Text(
              '50%',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  // @override
  // void setState(VoidCallback fn) {
  //   // TODO: implement setState
  // }
}

class RardialPrecentWidget extends StatelessWidget {
  final Widget child;

  final double precent;
  final Color backgroundColor;
  final Color underLineColor;
  final Color overLineColor;
  final double lineWidth;

  const RardialPrecentWidget(
      {super.key,
      required this.child,
      required this.precent,
      required this.backgroundColor,
      required this.underLineColor,
      required this.overLineColor,
      required this.lineWidth});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CustomPaint(
            painter: MyPainter(
          precent: precent,
          backgroundColor: backgroundColor,
          underLineColor: underLineColor,
          overLineColor: overLineColor,
          lineWidth: lineWidth,
        )),
        Padding(
          padding: const EdgeInsets.all(11.0),
          child: Center(child: child),
        ),
      ],
    );
  }
}

class MyPainter extends CustomPainter {
  final double precent;
  final Color backgroundColor;
  final Color underLineColor;
  final Color overLineColor;
  final double lineWidth;

  MyPainter(
      {super.repaint,
      required this.precent,
      required this.backgroundColor,
      required this.underLineColor,
      required this.overLineColor,
      required this.lineWidth});
  @override
  void paint(Canvas canvas, Size size) {
    final arcRect = calculateArcsRect(size);

    drawBackground(canvas, size);

    drawUnderLine(canvas, arcRect);

    drawOverLine(canvas, arcRect);
  }

  void drawOverLine(Canvas canvas, Rect arcRect) {
    final overLinePaint = Paint();
    overLinePaint.color = overLineColor;
    overLinePaint.style = PaintingStyle.stroke;
    overLinePaint.strokeWidth = lineWidth;
    overLinePaint.strokeCap = StrokeCap.round;
    canvas.drawArc(
      arcRect,
      -pi / 2,
      pi * 2 * precent,
      false,
      overLinePaint,
    );
  }

  void drawUnderLine(Canvas canvas, Rect arcRect) {
    final underLine = Paint();
    underLine.color = underLineColor;
    underLine.style = PaintingStyle.stroke;
    underLine.strokeWidth = lineWidth;
    canvas.drawArc(
      arcRect,
      pi * 2 * precent - (pi / 2),
      pi * 2 * (1.0 - precent),
      false,
      underLine,
    );
  }

  void drawBackground(Canvas canvas, Size size) {
    final backgroundPaint = Paint();
    backgroundPaint.color = backgroundColor;
    backgroundPaint.style = PaintingStyle.fill;
    canvas.drawOval(Offset.zero & size, backgroundPaint);
  }

  Rect calculateArcsRect(Size size) {
    const lineMargin = 3;
    final offset = lineWidth / 2 + lineMargin;
    final arcRect = Offset(offset, offset) &
        Size(
          size.width - offset * 2,
          size.height - offset * 2,
        );
    return arcRect;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
