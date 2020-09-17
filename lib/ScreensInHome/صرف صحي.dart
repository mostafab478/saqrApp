





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saqr2/AddServiceScreens/%D8%B5%D8%B1%D9%81%20%D8%B5%D8%AD%D9%8A.dart';
import 'package:easy_localization/easy_localization.dart';
class Sanitation extends StatefulWidget {
  @override
  _SanitationState createState() => _SanitationState();
}

class _SanitationState extends State<Sanitation> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    Widget peopleworking(){
      return Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                SizedBox(height:
                height/16,),
                Container(
                  padding: EdgeInsets.only(right: width/18),
                  alignment: Alignment.topRight,
                  child: Text("serviceproviders".tr().toString(),style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,  ),textAlign: TextAlign.center,),
                ),
                SizedBox(height:
                height/16,),
                Container(height: height/13,
                  width: width/1.2,
                  child: TextFormField(textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        hintText: "name".tr().toString(),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height:
                height/16,),
                Container(height: height/4,
                  width: width/1.1,
                  decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(15)),
                  child:
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:2.0),
                                    child: Text("jojooo",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                                  ),
                                  Text("serviceprovider".tr().toString(),style: TextStyle(fontWeight: FontWeight.bold),),

                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:2.0),
                                    child: Text("...ثان المنصوره الدقهليه",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                                  ),
                                  Text("address".tr().toString(),style: TextStyle(fontWeight: FontWeight.bold),),

                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:2.0),
                                    child: Text("966548252999",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                                  ),
                                  Text("phoneNum2".tr().toString(),style: TextStyle(fontWeight: FontWeight.bold),),

                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:2.0),
                                    child: Text("notavailable".tr().toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                                  ),
                                  Text("state".tr().toString(),style: TextStyle(fontWeight: FontWeight.bold),),

                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right:2.0),
                                    child: Icon(Icons.star,color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right:2.0),
                                    child: Icon(Icons.star,color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right:2.0),
                                    child: Icon(Icons.star,color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right:2.0),
                                    child: Icon(Icons.star,color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right:2.0),
                                    child: Icon(Icons.star,color: Colors.grey,),
                                  ),
                                  Text("rate".tr().toString(),style: TextStyle(fontWeight: FontWeight.bold),),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:2.0,left: 2.0),
                        child: CircleAvatar(backgroundImage: AssetImage("lib/Assets/chLocation.png"),radius: height/13,),
                      ),

                    ],
                  ),),

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
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>SanitationAdd()));
// AddContainer();

                      },

                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
    return Scaffold(

        appBar: AppBar(),

        body: peopleworking()
    );
  }
}
