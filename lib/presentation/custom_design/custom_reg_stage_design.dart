import 'package:flutter/material.dart';
import 'package:pyli_business_mobile/presentation/style/__style.dart';

class CustomRegStateDesignCenter extends CustomPainter {
  bool isActive;

  CustomRegStateDesignCenter({
    this.isActive = true,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = new Paint()
      ..color = this.isActive
          ? CustomColors.secondaryColor
          : CustomColors.lightPrimaryColor;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.2, size.height / 2);
    path.lineTo(0, size.height);
    path.lineTo(size.width - size.width * 0.2, size.height);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - size.width * 0.2, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class CustomRegStateDesignRight extends CustomPainter {
  bool isActive;

  CustomRegStateDesignRight({
    this.isActive = true,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = new Paint()
      ..color = this.isActive
          ? CustomColors.secondaryColor
          : CustomColors.lightPrimaryColor;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.2, size.height / 2);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class CustomRegStateDesignLeft extends CustomPainter {
  bool isActive;

  CustomRegStateDesignLeft({
    this.isActive = true,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = new Paint()
      ..color = this.isActive
          ? CustomColors.secondaryColor
          : CustomColors.lightPrimaryColor;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width - size.width * 0.2, size.height);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - size.width * 0.2, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
