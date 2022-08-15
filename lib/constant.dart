import 'package:flutter/material.dart';

const String fontFamily = 'SF Pro Rounded';
const kPrimaryLightColor = Color(0xFFF1E6FF);

const kLoginTitleTextStyle = TextStyle(
    height: 1.5,
    color: Color.fromRGBO(26, 26, 26, 1),
    fontSize: 32,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily);

const kGFButtonTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily);

const kSRButtonSize = Size(140.0, 45.0);

const kTitleTranTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily);

const kTextTranTextStyle = TextStyle(
    color: Color.fromRGBO(26, 26, 26, 100),
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily);

const kAmountTranTextStyle = TextStyle(
  fontSize: 16,
  fontFamily: fontFamily,
  fontWeight: FontWeight.w600,
);

const kOnBoardingSkipTextStyle = TextStyle(
  fontSize: 16,
  color: Color.fromRGBO(26, 135, 221, 1),
  fontWeight: FontWeight.w400,
  fontFamily: fontFamily,
);

const kOnBoardingTextStyle = TextStyle(
    fontSize: 14,
    color: Colors.black38,
    fontWeight: FontWeight.w200,
    fontFamily: fontFamily,
    wordSpacing: 2);

const kOnBoardingTitleStyle = TextStyle(
    fontSize: 20.0,
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontFamily: fontFamily);

class GFButton extends StatelessWidget {
  final Function onPressed;
  final Text text;

  const GFButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed(),
        style: ElevatedButton.styleFrom(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            primary: Colors.grey,
            minimumSize: Size(150, 50)),
        child: text);
  }
}

class TransactionSpace extends StatelessWidget {
  const TransactionSpace(
      {Key? key,
        required this.circleAvatar,
        required this.text,
        required this.title,
        required this.amount})
      : super(key: key);

  final CircleAvatar circleAvatar;
  final String title;
  final String text;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        circleAvatar,
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: kTitleTranTextStyle),
            Text(text, style: kTextTranTextStyle)
          ],
        ),
        Spacer(),
        Text(amount, style: kAmountTranTextStyle)
      ],
    );
  }
}

class ContainerWidget extends StatelessWidget {
  final Image value;
  final Text text;

  ContainerWidget({
    Key? key,
    required this.value,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        (value),
        SizedBox(
          height: 6,
        ),
        text
      ],
    );
  }
}

class SendButton extends StatelessWidget {
  const SendButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/path.png"),
          SizedBox(
            width: 5,
          ),
          Text(
            'Send',
            style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: fontFamily,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
      style: ElevatedButton.styleFrom(
        primary: Color.fromRGBO(248, 187, 24, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class RequestDetail extends StatelessWidget {
  const RequestDetail(
      {Key? key,
        required this.imageLoad,
        required this.name,
        required this.amount})
      : super(key: key);

  final String imageLoad, name, amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              child: Image.asset(imageLoad),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  amount,
                  style: TextStyle(
                      color: Color.fromRGBO(26, 26, 26, 100),
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                )
              ],
            ),
          ],
        ),
        SendButton()
      ],
    );
  }
}


class HomeDetail extends StatelessWidget {
  const HomeDetail({
    required this.imageLoad,
    required this.title,
    required this.text,
    required this.amount,
    Key? key,
  }) : super(key: key);

  final String imageLoad, title, text, amount;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child:
                  Image.asset(imageLoad),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      text,
                      style: TextStyle(
                          color:
                          Color.fromRGBO(26, 26, 26, 100),
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
            Text(
              amount ,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: fontFamily),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}


class ContactButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: (){},
          child: Image.asset("assets/images/path.png"),
          style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(248, 187, 24, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: Size(45,45)
          ),
        ),
        SizedBox(width: 3,),
        ElevatedButton(
          onPressed: (){},
          child: Image.asset("assets/images/patt.png"),
          style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(26, 135, 221, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              minimumSize: Size(45,45)
          ),
        )
      ],
    );
  }
}


class ContactDetail extends StatelessWidget {
  const ContactDetail({
    required this.imageLoad,
    required this.title,
    required this.text,
    Key? key,
  }) : super(key: key);

  final String imageLoad, title, text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              child: Image.asset(imageLoad),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.w400,
                      fontSize: 14
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  text,
                  style: TextStyle(
                      color: Color.fromRGBO(26, 26, 26, 100),
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.w400,
                      fontSize: 12
                  ),
                )
              ],
            ),
          ],
        ),

        ContactButton()
      ],
    );
  }
}


class CardDetail extends StatelessWidget {
  const CardDetail({
    Key? key,
    required this.card_num,
    required this.card_name,
    required this.card_date
  }) : super(key: key);

  final String? card_num, card_name, card_date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 285,
        height: 193,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color.fromRGBO(26, 135, 221, 1),
          image: DecorationImage(
            opacity: 200,
            scale: 0.7,
            alignment: Alignment.bottomRight,
            image: AssetImage("assets/images/Shape.png"),

          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(image: AssetImage("assets/images/sape.png"))
                ],
              ),
              SizedBox(height: 12,),
              Image(image: AssetImage("assets/images/pin.png")),
              SizedBox(height: 20,),
              Text(
                card_num!,
                style: TextStyle(
                    wordSpacing: 3,
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.w400

                ),
              ),
              SizedBox(height: 11,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cardholder',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 50),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: fontFamily
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        card_name!,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: fontFamily
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 80,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Exp. Date',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: fontFamily
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        card_date!,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: fontFamily
                        ),
                      )

                    ],
                  ),
                ],
              )
            ],
          ),
        ),


      ),
    );
  }
}


