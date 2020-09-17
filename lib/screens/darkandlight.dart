import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saqr2/provider/bloc.dart';
import 'package:saqr2/screens/SignIn.dart';
import 'package:easy_localization/easy_localization.dart';





class DarkAndLight extends StatefulWidget {
  @override
  _DarkAndLightState createState() => _DarkAndLightState();
}

class _DarkAndLightState extends State<DarkAndLight> {
  @override
  Widget build(BuildContext context) {
    Bloc _bloc = Provider.of<Bloc>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("thchange".tr().toString()),

            SizedBox(height: 20,),

            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              color: Colors.black,
                child: Text("light".tr().toString(),style: TextStyle(color: Colors.white),),
              onPressed: (){

                _bloc.setTheme(ThemeData(appBarTheme: AppBarTheme(color: Colors.black) ,backgroundColor: Colors.black,
                    floatingActionButtonTheme:FloatingActionButtonThemeData(backgroundColor: Colors.green)  ));

                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn()));
              },
            ),

            SizedBox(height: 20,),

            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              color: Colors.black,
              child: Text("dark".tr().toString(),style: TextStyle(color: Colors.white),),
              onPressed: (){
                _bloc.setTheme(ThemeData.dark());

                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignIn()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
