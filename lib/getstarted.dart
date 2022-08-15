import 'package:flutter/material.dart';
import 'package:pay/signup.dart';

import 'login.dart';

class Getstarted extends StatelessWidget {
  const Getstarted ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 500,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(250, 100),
                  bottomRight: Radius.elliptical(250, 100)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/Logo.png"),
                SizedBox(
                  height: 106,
                ),
                Image.asset("images/best.png")
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: ElevatedButton(

                onPressed:(){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignUp()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  minimumSize:Size(double.infinity, 50),
                ),
                child: Text(
                  'Create new account',
                  style: TextStyle(
                      color: Colors.white,

                  ),
                )
            ),
          ),
          TextButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));
            },
            child: Text(
              "Already have account?",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 14,

              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
