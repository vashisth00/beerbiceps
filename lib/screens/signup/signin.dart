import 'package:beerbiceps/screens/dashboard/login.dart';
import 'package:beerbiceps/screens/home/login.dart';
import 'package:flutter/material.dart';

class LoginAnimation extends StatelessWidget {
  const LoginAnimation({
    Key key,
    @required this.login,
  }) : super(key: key);

  final bool login;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
      height: login
          ? MediaQuery.of(context).size.height * 0.6
          : MediaQuery.of(context).size.height * 0.4,
      child: CustomPaint(
        painter: CurvePainter(login),
        child: Container(
          padding: EdgeInsets.only(bottom: login ? 0 : 55),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: login ? Login() : LoginOption(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  bool outterCurve;

  CurvePainter(this.outterCurve);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.amber;
    paint.style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width * 0.5,
        outterCurve ? size.height + 110 : size.height - 110,
        size.width,
        size.height);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
