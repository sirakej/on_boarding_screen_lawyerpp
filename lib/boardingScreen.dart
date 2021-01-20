import 'package:flutter/material.dart';

class Sliders extends StatefulWidget {

  static const String id = 'sliders_page';

  @override
  _SlidersState createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  PageController pageController = new PageController();
  int index = 0;

  double width = 0;
  double height = 0;

  String mainText = '';
  String subText = '';

  textChange(page) {
    List mainTexts = [
      'Let Clients find you',
      'Create your Law Firm',
      'Send Panic Alerts',
      'Access Legal Resources'
    ];
    List subTexts = [
      'Receive requests for legal services on the go and run your law practice from anywhere, at any time.',
      'Create a law firm. Add employees. Get consulted. Bid for work. Assign work. Issue invoices.Receive payment for your services',
      'If you are ever in trouble, hit the Panic Button to send your live location to and get help from other Lawyers and your Next of Kin.',
      'Run a world-class law practice with the tools available in the Resources Menu – access a wide range of Model Forms & Agreements on the go.',
    ];
    mainText = mainTexts[page];
    subText = subTexts[page];
  }

  onImageChange(int page) {
    index = page;
    setState(() {
      if (page == 0) {
        indicator = Container(
          width: 44,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: Color(0XFF1E50CF),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: Color(0XFFC4C4C4),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: Color(0XFFC4C4C4),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: Color(0XFFC4C4C4),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        );
      } else if (page == 1) {
        indicator = Container(
          width: 44,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: Color(0XFFC4C4C4),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: Color(0XFF1E50CF),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: Color(0XFFC4C4C4),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: Color(0XFFC4C4C4),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        );
      } else if (page == 2) {
        indicator = Container(
          width: 44,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: Color(0XFFC4C4C4),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: Color(0XFFC4C4C4),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: Color(0XFF1E50CF),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: 6,
                height:6,
                decoration: BoxDecoration(
                  color: Color(0XFFC4C4C4),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        );
      }
      else if (page == 3) {
        indicator = Container(
          width: 44,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: Color(0XFFC4C4C4),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: 6,
                height:6,
                decoration: BoxDecoration(
                  color: Color(0XFFC4C4C4),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: 6,
                height:6,
                decoration: BoxDecoration(
                  color: Color(0XFFC4C4C4),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: Color(0XFF1E50CF),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        );
      }
    });
  }

  Widget indicator = Container(
    width: 44,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: Color(0XFF1E50CF),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: Color(0XFFC4C4C4),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: Color(0XFFC4C4C4),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: Color(0XFFC4C4C4),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    textChange(index);
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              PageView(
                controller: pageController,
                onPageChanged: onImageChange,
                physics: AlwaysScrollableScrollPhysics(),
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/Slide1.png',
                      width:width,
                      //height: 450,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/Slide2.png',
                      width: width,
                     // height: height * 0.825,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/Slide3.png',
                      width: width,
                      //height: height * 0.825,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/Slide4.png',
                      width: width,
                      //height: height * 0.825,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              Container(
                width: width,
                height: MediaQuery.of(context).size.height/2.5,
               color: Color(0xFFFFFFFF),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 49, 20, 35),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            //width: width - 60,
                            child: Text(
                              mainText,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF1A2C56),
                                fontFamily: 'Raleway',
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(height: 31),
                          Container(
                            //width: width - 60,
                            child: Text(
                              subText,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                color: Color(0xFF1D1D1D),
                                fontSize: 17.75,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30,right:32),
                        child: Row(
                          //mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                  pageController.previousPage(
                                    duration: Duration(milliseconds: 400),
                                    curve: Curves.easeIn,
                                  );
                              },
                              child: Text(
                                (index > 0)? 'Prev' : '',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Raleway',
                                  color: Color(0xFF999999),
                                ),
                              ),
                            ),
                            indicator,
                            InkWell(
                              onTap: () {
                                if (index == 3) {
                                  //Navigator.pushReplacementNamed(context, SignIn.id);
                                } else {
                                  pageController.nextPage(
                                    duration: Duration(milliseconds: 400),
                                    curve: Curves.easeIn,
                                  );
                                }
                              },
                              child: Text(
                                (index < 3)? 'Next' : 'Got it',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Raleway',
                                color: Color(0xFF1A2C56),
                              ),
                            ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}