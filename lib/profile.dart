import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
//   TextEditingController  = TextEditingController();

// TextEditingController  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          home: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(title: Text("Profile"),
        leading: Icon(Icons.person),
        backgroundColor: Colors.lightBlueAccent,
        ),
        body:Padding(
          padding: const EdgeInsets.only(top: 50,left: 20),
          child: Column(
       children:<Widget> [ 
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
             CircleAvatar(radius: 55,
            backgroundImage:AssetImage("images/illustration-man-suit.jpg"),
              ),
            Column(
             
              children:<Widget> [
               Text("Jatin Pal",style: TextStyle(fontSize:35,fontWeight: FontWeight.bold,),textAlign: TextAlign.right,textDirection: TextDirection.rtl),
               Padding(
                 padding: const EdgeInsets.only(left:8.0),
                 child: Text("(Android Developer)",style: TextStyle(fontSize:20,fontWeight: FontWeight.normal),textAlign: TextAlign.right,textDirection: TextDirection.rtl,),
               ),
              ],
            ),
            ],
     
          ),
          Padding(
            padding: const EdgeInsets.only(top: 17,left: 20),
            child: Column(
              children:<Widget> [
                Row(
                children:<Widget> [
                   Icon(
                     Icons.school,
                     color: Colors.grey[600],
                     size: 50,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:7.5,top:10.0),
                     child: Text("Dr.AITH , Kanpur",style: TextStyle(fontSize:20,fontWeight:FontWeight.normal),textDirection: TextDirection.rtl),
                   ),
                 ], 
                ),
                 Row(
                   children:<Widget> [
                     Padding(
                       padding: const EdgeInsets.only(top:10.0),
                       child: Icon(
                         Icons.book_sharp,
                         color: Colors.grey[600],
                         size: 50,
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left:9.0,top:10.0),
                       child: Text("Bachelors in technology",style: TextStyle(fontSize:20,fontWeight:FontWeight.normal),textDirection: TextDirection.rtl),
                     ),
                   ], 
                ),
                 
                 Row(
                    children:<Widget> [
                     Padding(
                       padding: const EdgeInsets.only(top:10.0),
                       child: Icon(
                         Icons.my_location,
                         color: Colors.grey[600],
                         size: 50,
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left:9.0,top:10.0),
                       child: Text("Moradabad",style: TextStyle(fontSize:20,fontWeight:FontWeight.normal),textDirection: TextDirection.rtl),
                     ),
                   ], 
                ),
                 
                 Row(
                    children:<Widget> [
                     Padding(
                       padding: const EdgeInsets.only(top:10.0),
                       child: Icon(
                         Icons.email,
                         color: Colors.grey[600],
                         size: 50,
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left:9.0,top:10.0),
                       child: Text("Paljatin479@gmail.com",style: TextStyle(fontSize:20,fontWeight:FontWeight.normal),textDirection: TextDirection.rtl),
                     ),
                   ], 
                ),
                 
                  Row(
                    children:<Widget> [
                     Padding(
                       padding: const EdgeInsets.only(top:10.0),
                       child: Icon(
                         Icons.phone,
                         color: Colors.grey[600],
                         size: 50,
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left:9.0,top:10.0),
                       child: Text("91-7302306798+",style: TextStyle(fontSize:20,fontWeight:FontWeight.normal),textDirection: TextDirection.rtl),
                     ),
                   ], 
                ),
                 
              ],
            ),

          ),

              ],
              
            ),
        
        ),
         
       
          ),  
      );
    
    
  }
}