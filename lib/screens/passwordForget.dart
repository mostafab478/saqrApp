



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class passForget extends StatefulWidget {
  @override
  _passForgetState createState() => _passForgetState();
}

class _passForgetState extends State<passForget> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;



    return Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(height: height/20,),
              Container(alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right:18.0),
                  child: Text("enterPhoneNum".tr().toString(),style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height/20,
                    fontWeight: FontWeight.bold,  ),textAlign: TextAlign.center,),
                ),
              ),
              SizedBox(height: height/40,),
              Image.asset("lib/Assets/saqrLogo.jpg",
                height:height/5 ,
                width: width/2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(alignment: Alignment.center,
                  child: Text("forgetpassNum".tr().toString(),style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height/40,
                    fontWeight: FontWeight.bold,  ),textAlign: TextAlign.center,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(height: height/13,
                  width: width/1.2,
                  child: TextFormField(textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        hintText: "phoneNum".tr().toString(),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(width: width/1.2,
                  height: height/17,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    color: Colors.black,onPressed: (){},
                    child: Text("enter".tr().toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
