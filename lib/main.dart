
import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:saqr2/provider/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:saqr2/screens/pageview.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(EasyLocalization(
    path: "lib/lang",
    saveLocale: true,
    supportedLocales: [
      Locale('en','EN'),
      Locale('ar','AR'),
    ],
    child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context)=>Bloc(ThemeData.dark()))
        ],
        child: MyApp()
    ),
  )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.




  @override
  Widget build(BuildContext context) {

    Bloc _bloc =  Provider.of<Bloc>(context);
    _bloc.setTheme(ThemeData.dark());

    return MaterialApp(
      theme: _bloc.getTheme() ,
    localizationsDelegates: context.localizationDelegates,
    supportedLocales: context.supportedLocales,
    locale: context.locale,
    debugShowCheckedModeBanner: false,
    title:'hello',


    home: MyHomePage(),
        );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double _hight = 0;
  double _width = 0;

  @override
  Widget build(BuildContext context) {

//    var bloc = Provider.of<Bloc>(context);

    double va(){
      _hight = MediaQuery
          .of(context)
          .size
          .height / 1.5;
      _width = MediaQuery
          .of(context)
          .size
          .width / 1.5;

    }

_navigate() async{
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Onboarding() ));
}
 Future <Timer> LoadTime() async{
  return Timer(Duration(seconds: 5), _navigate);
 }
Future <Timer> LoadTimeAnim() async{
  return Timer(Duration(milliseconds: 3), va);
}

setState(() {
  LoadTime();
LoadTimeAnim();

});


    return Scaffold(
//      appBar: AppBar(backgroundColor: Colors.white70,
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//      ),
      body: Center(
        child: AnimatedContainer(duration: Duration(seconds: 4),

          curve: Curves.bounceOut,
          height: _hight,
          width: _width,
          child: Image.asset("lib/Assets/saqrLogo.jpg")
        ),
      ),
    );

  }
}


