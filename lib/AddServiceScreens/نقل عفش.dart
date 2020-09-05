





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovingHousesAdd extends StatefulWidget {
  @override
  _MovingHousesAddState createState() => _MovingHousesAddState();
}

class _MovingHousesAddState extends State<MovingHousesAdd> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,),
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
                  child: Text("اضافه الخدمه",style: TextStyle(
                    fontSize: height/20,
                    fontWeight: FontWeight.bold,  ),textAlign: TextAlign.center,),
                ),
                SizedBox(height: height/50,),
                Container(height: height/13,
                  width: width/1.2,
                  child: TextFormField(textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        hintText: "اسم الخدمه",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: height/50,),
                Container(height: height/13,
                  width: width/1.2,
                  child: TextFormField(textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        hintText: "الموقع",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: height/50,),
                Container(height: height/13,
                  width: width/1.2,
                  child: TextFormField(textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        hintText: "صوره الهويه",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: height/50,),
                Container(height: height/13,
                  width: width/1.2,
                  child: TextFormField(textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        hintText: "صوره الرخصه",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: height/50,),
                Container(height: height/13,
                  width: width/1.2,
                  child: TextFormField(textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        hintText: "رقم اللوحه",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: height/50,),
                Container(height: height/13,
                  width: width/1.2,
                  child: TextFormField(textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        hintText: "صوره المركبه من الامام",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: height/50,),
                Container(height: height/13,
                  width: width/1.2,
                  child: TextFormField(textAlign: TextAlign.end,
                    decoration: InputDecoration(
                        hintText: "صوره المركبه من الخلف",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))
                    ),
                  ),
                ),
                SizedBox(height: height/50,),
                Container(
                  padding: EdgeInsets.only(right: width/18),
                  alignment: Alignment.topRight,
                  child: Text(": صوره اضافيه",style: TextStyle(
                    fontSize: height/28,
                    fontWeight: FontWeight.bold,  ),textAlign: TextAlign.center,),
                ),
                SizedBox(height: height/50,),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:18.0),
                      child: Container(
                        height: height/9,
                        width: width/5,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),border: Border.all(width: 1)),
                        child: Icon(Icons.camera_alt,size: height/18,),
                      ),
                    ),
                  ],
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
                      child: Text("اضافه خدمه",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
