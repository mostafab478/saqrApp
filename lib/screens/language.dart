







import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saqr2/screens/darkandlight.dart';

class Languagechange extends StatefulWidget {
  @override
  _LanguagechangeState createState() => _LanguagechangeState();
}

class _LanguagechangeState extends State<Languagechange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("chLang".tr().toString(),style: TextStyle(color: Colors.white),),
            SizedBox(height: 20,),
            RaisedButton(
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Colors.black,
              onPressed: (){
              Navigator.of(context).push( MaterialPageRoute(builder: (context)=>DarkAndLight()));
              EasyLocalization.of(context).locale = Locale('ar','AR');
            },
            child: Text('arabic'.tr().toString(),style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 20,),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              color: Colors.black,
              onPressed: (){
              Navigator.of(context).push( MaterialPageRoute(builder: (context)=>DarkAndLight()));
              EasyLocalization.of(context).locale = Locale('en','EN');
            },
              child: Text('english'.tr().toString(),style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
