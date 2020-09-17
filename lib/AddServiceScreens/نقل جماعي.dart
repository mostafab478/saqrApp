





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class masstransferAdd extends StatefulWidget {
  @override
  _masstransferAddState createState() => _masstransferAddState();
}

class _masstransferAddState extends State<masstransferAdd> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(),
        body: AnimatedContainer(
          duration: Duration(seconds: 5),
          child:
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height/50,),
                Container(
                  padding: EdgeInsets.only(right: width/18),
                  alignment: Alignment.topRight,
                  child: Text("addservice".tr().toString(),style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,  ),textAlign: TextAlign.center,),
                ),
                SizedBox(height: height/50,),
                Container(height: height/13,
                  width: width/1.2,
                  child: TextFormField(textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        hintText: "servicename".tr().toString(),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: height/50,),
                Container(height: height/13,
                  width: width/1.2,
                  child: TextFormField(textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        hintText: "location".tr().toString(),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: height/50,),
                Container(height: height/13,
                  width: width/1.2,
                  child: TextFormField(textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        hintText: "idpic".tr().toString(),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: height/50,),
                Container(height: height/13,
                  width: width/1.2,
                  child: TextFormField(textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        hintText: "licensepic".tr().toString(),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: height/50,),
                Container(height: height/13,
                  width: width/1.2,
                  child: TextFormField(textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        hintText: "platenum".tr().toString(),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: height/50,),
                Container(height: height/13,
                  width: width/1.2,
                  child: TextFormField(textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        hintText: "platepicfront".tr().toString(),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: height/50,),
                Container(height: height/13,
                  width: width/1.2,
                  child: TextFormField(textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        hintText: "platepicbehind".tr().toString(),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: height/50,),
                Container(
                  padding: EdgeInsets.only(right: width/18),
                  alignment: Alignment.topRight,
                  child: Text("anotherpic".tr().toString(),style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,  ),textAlign: TextAlign.center,),
                ),
                SizedBox(height: height/50,),
                Container(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right:18.0),
                    child: Container(
                      height: height/9,
                      width: width/5,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),border: Border.all(width: 1)),
                      child: Icon(Icons.camera_alt,size: height/18,),
                    ),
                  ),
                ),
                SizedBox(height: height/50,),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(width: width/1.4,
                    height: height/17,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      color: Colors.black,onPressed: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                    },
                      child: Text("addservice".tr().toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                SizedBox(height: height/50,),
              ],
            ),
          ),
        )
    );
  }
}