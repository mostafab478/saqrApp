




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saqr2/screens/SignIn.dart';
import 'package:saqr2/ScreensInHome/النقل.dart';
import 'package:saqr2/ScreensInHome/حاويات نظافه.dart';
import 'package:saqr2/ScreensInHome/خدمات المنازل.dart';
import 'package:saqr2/ScreensInHome/صرف صحي.dart';
import 'package:saqr2/ScreensInHome/ليموزين.dart';
import 'package:saqr2/ScreensInHome/معدات ثقيله.dart';
import 'package:saqr2/ScreensInHome/مياه تحليه.dart';
import 'package:saqr2/ScreensInHome/نقل جماعي.dart';
import 'package:saqr2/ScreensInHome/نقل عفش.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

Widget Icons1(String title,var image,tab){
 return Container(
   margin: EdgeInsets.only(top: 5,bottom: 5),
   height: height/4.4,
   width: width/2.5,
   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black12,
   ),
  child:
  InkWell(
    onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>tab,));
  },
    child: Column(
      children: [

        Container(
          height: height/5.5,
          width: width,
          decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ,
            image: DecorationImage(
              image: AssetImage("$image") ,
     fit: BoxFit.fill,
 ),),
        ),
        Container(padding: EdgeInsets.only(top: 5),
            child: Text("$title",style: TextStyle(fontWeight: FontWeight.bold,),)
        ),
      ],
    ),
  ),
);
}


    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        leading:
        Container(
          child: InkWell(onTap: (){},
            child: Icon(
              Icons.notifications,color: Colors.white,),
          ),
          color: Colors.black26,margin: EdgeInsets.all(8),),
      ),
        body: Container(width: width,
         child:
         SingleChildScrollView(
           child: Column(
             children: [
               Row(
                 children: [

                   SizedBox(height:
                   height/7),
                   Expanded(
                     child: Container(
                       padding: EdgeInsets.only(right: width/18),
                       alignment: Alignment.topRight,
                       child: Text("Services".tr().toString(),style: TextStyle(
                         fontSize: height/20,color: Colors.black,
                         fontWeight: FontWeight.bold,  ),textAlign: TextAlign.center,),
                     ),
                   ),
                 ],
               ),
               // SizedBox(height:
               // height/100),
               Row(mainAxisAlignment:   MainAxisAlignment.spaceAround,
                 children: [
                   Icons1("Transfer".tr().toString(),"lib/Assets/chLocation.png",Transfer()
                   ),
                   Icons1("HeavyEquipment".tr().toString(),"lib/Assets/chLocation.png",HeavyEquipment()
                   ),
                 ],
               ),
               Row(mainAxisAlignment:   MainAxisAlignment.spaceAround,
                 children: [
                   Icons1("MassTransfer".tr().toString(),"lib/Assets/chLocation.png",MassTransfer()
                   ),
                   Icons1("Taxi".tr().toString(),"lib/Assets/chLocation.png",Taxi()
                   ),
                 ],
               ),
               Row(mainAxisAlignment:   MainAxisAlignment.spaceAround,
                 children: [
                   Icons1("CleaningContainers".tr().toString(),"lib/Assets/chLocation.png",CleaningContainers()
                   ),

                   Icons1("MovingHouses".tr().toString(),"lib/Assets/chLocation.png",MovingHouses()
                   ),
                 ],
               ),
               Row(mainAxisAlignment:   MainAxisAlignment.spaceAround,
                 children: [
                   Icons1("water".tr().toString(),"lib/Assets/chLocation.png",water()
                   ),
                   Icons1("Sanitation".tr().toString(),"lib/Assets/chLocation.png",Sanitation()
                   ),
                 ],
               ),
               Row(mainAxisAlignment:   MainAxisAlignment.spaceAround,
                 children: [
                   Icons1("HomeService".tr().toString(),"lib/Assets/chLocation.png",HomeService()
                   ),

                 ],
               ),


             ],
           ),
         ),
        )
    );
  }
}
