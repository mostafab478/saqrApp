


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saqr2/screens/SignUp.dart';
import 'package:saqr2/screens/passwordForget.dart';
import 'package:saqr2/screens/Home.dart';
import 'package:easy_localization/easy_localization.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
            SizedBox(height: height/8,),
            Image.asset("lib/Assets/saqrLogo.jpg",
            height:height/5 ,
              width: width/2,
            ),

            SizedBox(height: height/20,),

            Text(
              // "تسجيل الدخول",
              "SignIn".tr().toString(),
              style: TextStyle(
              fontSize: MediaQuery.of(context).size.height/24,
              fontWeight: FontWeight.bold,  ),textAlign: TextAlign.center,),

            SizedBox(height: height/20,),

            Container(height: height/13,
              width: width/1.2,
              child: TextFormField(textAlign: TextAlign.end,
                decoration: InputDecoration(
                  hintText: "phoneNum".tr().toString(),
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
                    hintText: "pass1".tr().toString(),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                ),),
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
                  color: Colors.black,onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                },
                  child: Text("SignIn".tr().toString(),style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
            SizedBox(height: height/20,),
        InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>passForget()));
            },
            child: Text("forget".tr().toString(),style: TextStyle(fontWeight: FontWeight.bold),)
        ),

            SizedBox(height: height/40,),

            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                },
                child: Text("dont have account".tr().toString(),style: TextStyle(fontWeight: FontWeight.bold),)
            ),
          ],
        ),
      ),
    );
  }
}
