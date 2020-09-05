import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saqr2/AddServiceScreens/%D9%85%D9%8A%D8%A7%D9%87%20%D8%AA%D8%AD%D9%84%D9%8A%D9%87.dart';
import 'package:easy_localization/easy_localization.dart';

class water extends StatefulWidget {
  @override
  _waterState createState() => _waterState();
}

class _waterState extends State<water> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Widget Icons1(String title,var image,{tab}){
      return Container(
        margin: EdgeInsets.only(top: 5,bottom: 5),
        height: height/4.4,
        width: width/2.5,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black12,

        ),
        child:
        InkWell(onTap: (){
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>tab,));
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

        body: Stack(
          children: [
            Container(width: width,
              child:
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [

                        SizedBox(height:
                        height/6),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: width/18),
                            alignment: Alignment.topRight,
                            child: Text("water".tr().toString(),style: TextStyle(
                              fontSize: height/20,
                              fontWeight: FontWeight.bold,  ),textAlign: TextAlign.center,),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height:
                    // height/100),
                    Row(mainAxisAlignment:   MainAxisAlignment.spaceAround,
                      children: [
                        Icons1("trucks".tr().toString(),"lib/Assets/chLocation.png"),
                        Icons1("dinat".tr().toString(),"lib/Assets/chLocation.png"),
                      ],
                    ),
                    Row(mainAxisAlignment:   MainAxisAlignment.spaceAround,
                      children: [
                        Icons1("whaitat".tr().toString(),"lib/Assets/chLocation.png"),

                      ],
                    ),




                  ],
                ),
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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>waterAdd()));
// AddContainer();

                      },

                    ),
                  ),
                ],
              ),
            ),

          ],
        )
    );
  }
}
