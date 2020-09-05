// import 'dart:async';
// import 'package:flutter/material.dart';
//
// class page1 extends StatefulWidget {
//   @override
//   _page1State createState() => _page1State();
// }
//
// class _page1State extends State<page1> {
//   bool check = false;
//   @override
//   void initState() {
//     // TODO: implement initState
//     loadtime();
//     super.initState();
//   }
//
//   loadtime() {
//     Timer(Duration(seconds: 1), () async {
//       setState(() {
//         check = true;
//       });
//       // Navigator.push(context, MaterialPageRoute(builder: (context) {
//       //   return CountryPage();
//       // }));
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: AnimatedContainer(
//           height: check ? MediaQuery.of(context).size.height : 0,
//           width: check ? MediaQuery.of(context).size.width : 0,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Center(
//                 child: Image.asset("lib/Assets/saqr4.jpg",
//                   fit: BoxFit.fill,
//                   height: MediaQuery.of(context).size.height / 2,
//                   width: MediaQuery.of(context).size.width / 2,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 8.0),
//                 child: Text(
//                   "تطبيق صقر يوفر لك كثير من الخدمات التي تحتاجها",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
//                 ),
//               ),
//             ],
//           ),
//           duration: Duration(seconds: 1),
//           // curve: Curves.bounceOut,
//         ),
//       ),
//     );
//   }
// }


////////////////////
//
//
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saqr2/provider/bloc.dart';
import 'package:saqr2/screens/pageview.dart.';
import 'package:saqr2/provider/bloc.dart';
import 'package:easy_localization/easy_localization.dart';



class page1 extends StatefulWidget {
  @override
  _page1State createState() => _page1State();
}

// double hight = 0;
// double width = 0;
class _page1State extends State<page1> {
  //
  // va(){
  //   hight = MediaQuery
  //       .of(context)
  //       .size
  //       .height / 2;
  //   width = MediaQuery
  //       .of(context)
  //       .size
  //       .width;
  //
  // }
  // Future <Timer> LoadTimeAnim() async{
  //   return Timer(Duration(seconds: 10), va);
  // }

  bool check = false;

  loadtime() {
    Timer(Duration(seconds: 1), () async {
      setState(() {
        check = true;
      });
    });
  }

  void initState() {
    // TODO: implement initState
    setState(() {
loadtime();
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body:
            Column(
              children: [
                AnimatedContainer(
                  child: Image.asset("lib/Assets/saqr4.jpg",
fit: BoxFit.fill,
                    height:check ? MediaQuery.of(context).size.height/2 : 0,
                    width: check ? MediaQuery.of(context).size.width : 0,
                  ),
                  duration: Duration(seconds: 1),
                  height:check ? MediaQuery.of(context).size.height/2 : 0,
                  width: check ? MediaQuery.of(context).size.width : 0,
// curve: Curves.bounceOut,

                ),
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height:check ? MediaQuery.of(context).size.height/2 : 0,
                  width: check ? MediaQuery.of(context).size.width : 0,
                  child: Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Text("page1".tr().toString(),textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                  ),
                ),
              ],
            ),
          );




  }
}
