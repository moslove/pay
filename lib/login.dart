import 'package:flutter/material.dart';
import 'package:pay/signup.dart';

import 'background.dart';
import 'constant.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Login and start\ntransfering",
                            style: kLoginTitleTextStyle),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  primary: Color.fromRGBO(243, 244, 245, 1),
                                  minimumSize: kSRButtonSize
                              ), child: Text(
                            "Facebook",
                            style: kGFButtonTextStyle,
                          )

                          ),
                          ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  primary: Color.fromRGBO(243, 244, 245, 1),
                                  minimumSize: kSRButtonSize
                              ), child: Text(
                            "Google",
                            style: kGFButtonTextStyle,
                          )

                          )
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Text(
                          "Phone Number",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: fontFamily,
                              color: Color.fromRGBO(26, 26, 26, 1)),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          validator: (val){
                            if(val!.isEmpty) {
                              return 'Field can\'t be empty';
                            }
                          },
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor:Colors.white ,
                              contentPadding: EdgeInsets.only(left: 10),
                              hintText: "Enter your phonenumber",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(229, 229, 229, 1),
                                      width: 2),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(229, 229, 229, 1),
                                      width: 1.5),
                                  borderRadius: BorderRadius.circular(10)),
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: fontFamily,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: fontFamily,
                              color: Color.fromRGBO(26, 26, 26, 1)),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          validator: (val){
                            if(val!.isEmpty){
                              return 'Field can\'t be empty';
                            }
                          },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor:Colors.white ,
                              suffixIcon: Icon(
                                Icons.visibility,
                                color: Colors.grey,
                              ),
                              contentPadding: EdgeInsets.only(left: 10),
                              hintText: "Enter your password",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(229, 229, 229, 1),
                                      width: 2),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromRGBO(229, 229, 229, 1),
                                      width: 1.5),
                                  borderRadius: BorderRadius.circular(10)),
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: fontFamily,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forget password?",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: fontFamily,
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        ElevatedButton(
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(double.infinity, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                        child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: fontFamily),
                            )),
                        Center(
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()));
                              },
                              child: Text(
                                "Create new account",
                                style: TextStyle(
                                    fontFamily: fontFamily,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                                textAlign: TextAlign.center,
                              )),
                        )
                      ]),
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
