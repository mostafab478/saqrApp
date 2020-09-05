







import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saqr2/screens/SignIn.dart';

class Languagechange extends StatefulWidget {
  @override
  _LanguagechangeState createState() => _LanguagechangeState();
}

class _LanguagechangeState extends State<Languagechange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("chLang".tr().toString()),
            SizedBox(height: 20,),
            RaisedButton(
              onPressed: (){
              Navigator.of(context).push( MaterialPageRoute(builder: (context)=>SignIn()));
              EasyLocalization.of(context).locale = Locale('ar','AR');
            },
            child: Text('Arabic'),
            ),
            SizedBox(height: 20,),
            RaisedButton(onPressed: (){
              Navigator.of(context).push( MaterialPageRoute(builder: (context)=>SignIn()));
              EasyLocalization.of(context).locale = Locale('en','EN');
            },
              child: Text('English'),
            ),
          ],
        ),
      ),
    );
  }
}
