
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saqr2/screens/SignIn.dart';
import 'package:saqr2/screens/SignUp.dart';
import 'package:easy_localization/easy_localization.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {


    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;



    return Scaffold(
      body: Container(

        width: MediaQuery.of(context).size.width,
        height: height,
        child: Column(
          children: [
            SizedBox(height: height/20,),

            Padding(
              padding: const EdgeInsets.only(right:18.0),
              child: Container(alignment: Alignment.topRight,
                child: Text("newAcc".tr().toString(),style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height/20,
                  fontWeight: FontWeight.bold,  ),textAlign: TextAlign.center,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:18.0),
              child: Container(height: height/4.5,
                width: width/2.5,
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  shape: BoxShape.circle ,
                    color: Colors.white,
                  ),
                child: Icon(Icons.crop_original,size: height/9.5
                  ,),
                ),
              ),

            SizedBox(height: height/40,),
            Container(height: height/13,
              width: width/1.2,
              child: TextFormField(textAlign: TextAlign.end,
                decoration: InputDecoration(
                    hintText: "UserN".tr().toString(),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),
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
                  ),),
              ),
            ),
            Container(height: height/13,
              width: width/1.2,
              child: TextFormField(textAlign: TextAlign.end,
                decoration: InputDecoration(
                    hintText: "pass1".tr().toString(),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),),
            ),

            SizedBox(height: height/40,),

            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(width: width/1.2,
                height: height/17,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  color: Colors.black,onPressed: (){},
                  child: Text("sign".tr().toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                ),
              ),
            ),

            SizedBox(height: height/40,),

            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                },
                child: Text("haveAcc".tr().toString(),style: TextStyle(fontWeight: FontWeight.bold),)
            ),
          ],
        ),
      ),
    );
  }
}
