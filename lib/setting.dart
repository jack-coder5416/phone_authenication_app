import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          home: Scaffold(
        body: Center(
         child:Text("setting",style:TextStyle(fontSize: 50,color: Colors.white))
       ),
       backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        leading: Icon(Icons.settings),
      title: Text("Settings",style: TextStyle(color:Colors.white),),
      backgroundColor:Colors.lightBlueAccent ,
      ),
      ),
    );
  }
}