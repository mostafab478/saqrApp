



import 'package:provider/provider.dart';
import 'package:saqr2/provider/bloc.dart';
import 'package:saqr2/screens/language.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:saqr2/pageviewScreens/page1.dart';
import 'package:saqr2/pageviewScreens/page2.dart';
import 'package:saqr2/pageviewScreens/page3.dart';
import 'package:saqr2/provider/bloc.dart';
import 'package:saqr2/screens/SignIn.dart';
import 'package:easy_localization/easy_localization.dart';

class Onboarding extends StatefulWidget{

  @override
  _OnboardingState createState() => _OnboardingState();

}

class _OnboardingState extends State<Onboarding>{

  var _pages = [page3(),page2(),page1()];



  @override
  Widget build(BuildContext context) {

var currentIndex=0;
var currentI;




    final _controller = PageController(
        initialPage: 3
    );
    final pageview =
    Container(width: MediaQuery.of(context).size.width,
        child:
    PageView(reverse: false,
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children:_pages
    )
      );

    return Scaffold(
      body: Stack(

      children: [


        pageview,







            Container(padding: EdgeInsets.only(bottom: 10),
              child: Column(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmoothPageIndicator(

                        controller: _controller ,

                        count: 3,

                        effect: ExpandingDotsEffect(),

                      ),
                    ],
                  ),
                ],
              ),
            ),

        Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RaisedButton(

              elevation: 0,

              color: Colors.transparent,

              onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Languagechange() ));
              },
              child: Row(

              children: [

                Icon(Icons.arrow_back),

                Text("skip".tr().toString(),style: TextStyle(fontWeight: FontWeight.bold),),

              ],

            ),),
          ],
        ),


      ],


      ),
    );

  }

}


