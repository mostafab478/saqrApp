








import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saqr2/AddServiceScreens/%D8%AD%D8%A7%D9%88%D9%8A%D8%A7%D8%AA%20%D8%A7%D9%84%D9%86%D8%B8%D8%A7%D9%81%D9%87.dart';
import 'package:easy_localization/easy_localization.dart';

class CleaningContainers extends StatefulWidget {
  @override
  _CleaningContainersState createState() => _CleaningContainersState();
}

class _CleaningContainersState extends State<CleaningContainers> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    Widget Movinghouses(){

      return  Stack(
        children: [
          Column(
            children: [
              SizedBox(height:
              height/16,),
              Container(
                padding: EdgeInsets.only(right: width/18),
                alignment: Alignment.topRight,
                child: Text("CleaningContainers".tr().toString(),style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,  ),textAlign: TextAlign.center,),
              ),
              SizedBox(height: height/50,),
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
                      Text("medium".tr().toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
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


          Padding(
            padding: const EdgeInsets.only(bottom:8.0,left:8.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child:
                  FloatingActionButton(child: Icon(Icons.add_circle),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>CleaningContainersAdd()));
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

        appBar: AppBar(),

        body:Movinghouses()

    );
  }
}
