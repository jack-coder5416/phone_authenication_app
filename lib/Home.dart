import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
// import 'package:recipe/recipe.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return 
Scaffold(
     backgroundColor: Colors.blueAccent,
 appBar: AppBar(
      title: Text("HomePage",style: TextStyle(color:Colors.black),),
      backgroundColor:Colors.cyan[50] ,
      ),
     body: Center(
       child:Icon(Icons.person,size:56)
     ),
    );
  }
}


