
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Column(
        children: [
          Container(  height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width,
            child: Image.asset("lib/Assets/SearchLogo1.jpg",fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Text("page2".tr().toString(),textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
          )
        ],
      ),
    );



  }

}