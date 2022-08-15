import 'package:flutter/material.dart';
import 'package:pay/getstarted.dart';
class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late PageController _pageController;

  int _pageIndex =0;

  @override
  void initState() {
    // TODO: implement initState
    _pageController = PageController(initialPage: 0);
  }
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0,top: 32),
                    child: Text( _pageIndex ==0 ?'1/3' : _pageIndex ==1 ? '2/3': '3/3',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 32.0,top: 32),
                    child: TextButton(
                      onPressed: () {
                        _pageController.nextPage(duration: Duration(milliseconds: 300),
                            curve: Curves.ease);
                      },
                      child: Text("Skip",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff1A87DD)
                        ),),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: demo_data.length,
                  onPageChanged: (index){
                    setState((){
                      _pageIndex =index;
                    });
                  },
                  itemBuilder: (context,index)=>onboardcontent(
                    title: demo_data[index].title,
                    description: demo_data[index].description,
                    image:demo_data[index].image,),),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(demo_data.length,(index)=>
                      Dotindicator(isActive:index == _pageIndex,)),
                ],),
              SizedBox(height: 10,),
              Column(
                children: [
                  _pageIndex>1? Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Getstarted()));

                      },
                      child: Container(height:49 ,
                        width: 315,
                        decoration: BoxDecoration(
                          color: Color(0xff1A87DD),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text('Get Started',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                          ),)),
                      ),
                    ),
                  ): Text(''),
                ],
              ),
            ],
          ),
        ),),
    );
  }
}

class Onboard {

  final  String image, title, description;

  Onboard({
    required this.image,
    required this.title,
    required this.description
  });
}

final List<Onboard> demo_data =[

  Onboard(
    image: "images/illustration.png",
    title: "Add all accounts & manage",
    description: " You can add all accounts in one place \n and use it to send and request.",

  ),
  Onboard(
    image: "images/illu2.png",
    title: "Track your activity",
    description: " You can track your income, expenses \n activities and all statistics.",

  ),

  Onboard(
    image: "images/Wallet-rafiki.png",
    title: "Send & request payments",
    description: " You can send or recieve any payments \n from yous accounts.",
  ),

];

class Dotindicator extends StatelessWidget{
  Dotindicator({
    this.isActive=false,
  });
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 8),
      duration: Duration(milliseconds: 300),
      height: (12),
      width : isActive
          ?(32)
          :(12),
      decoration: BoxDecoration(
          color: isActive
              ?Color(0xff1A87DD)
              :Colors.grey,
          borderRadius: BorderRadius.circular(8)
      ),
    );
  }
}


class onboardcontent extends StatelessWidget {
  const onboardcontent({
    Key? key, required this.image, required this.title, required this.description,
  }) : super(key: key);

  final String image,title,description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Image.asset(image),
        SizedBox(height: 64),
        Text(title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Color(0xff1A1A1A)
          ),),
        SizedBox(height: 8),
        Text(description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xff1A1A1A),
          ),)],
    );
  }
}
