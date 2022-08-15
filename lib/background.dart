import 'package:flutter/material.dart';

class Background extends StatelessWidget {

  final Widget child;
  const Background({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(
                "images/Background.png"
            ),
                fit: BoxFit.contain
            )
        ),
        child: child,
      ),
    );
  }
}
