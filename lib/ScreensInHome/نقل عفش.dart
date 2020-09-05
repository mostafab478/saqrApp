












import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saqr2/AddServiceScreens/%D9%86%D9%82%D9%84%20%D8%B9%D9%81%D8%B4.dart';
import 'package:easy_localization/easy_localization.dart';

class MovingHouses extends StatefulWidget {
  @override
  _MovingHousesState createState() => _MovingHousesState();
}

class _MovingHousesState extends State<MovingHouses> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    Widget Movinghouses(){

      return  Stack(
        children: [
          Container(
            height: height,
            width: width,
            child: Column(
              children: [
                SizedBox(height:
                height/16,),
                Container(
                  padding: EdgeInsets.only(right: width/18),
                  alignment: Alignment.topRight,
                  child: Text("MovingHouses".tr().toString(),style: TextStyle(
                    fontSize: height/20,
                    fontWeight: FontWeight.bold,  ),textAlign: TextAlign.center,),
                ),
                Container(height: height/4,width: width/1.1,
                  decoration: BoxDecoration(image:
                  DecorationImage(image: AssetImage("lib/Assets/chLocation.png"),
                      fit: BoxFit.fill),borderRadius: BorderRadius.circular(15)),
                  // child: ,
                ),
                SizedBox(height: height/25,),
                InkWell(
                  onTap: (){
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right:18),
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("big".tr().toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        Icon(Icons.check_circle_outline,),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: height/25,),
                InkWell(
                  onTap: (){
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right:18.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("small".tr().toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        Icon(Icons.check_circle_outline,),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:8.0,left:8.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    alignment: Alignment.bottomLeft,
                    child:
                    FloatingActionButton(child: Icon(Icons.add_circle),
                      onPressed: (){
               Navigator.push(context,MaterialPageRoute(builder: (context)=>MovingHousesAdd()));
// AddContainer();

                      },

                    ),
                ),
              ],
            ),
          ),
        ],
      );
    }
    return Scaffold(
        body:Stack(
          children: [

            Movinghouses(),

          ],
        )

    );
  }
}
