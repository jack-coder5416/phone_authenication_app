import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:otpverify/Home.dart';
// import 'package:flutter/scheduler.dart';
import 'package:otpverify/login_Screen.dart';
import 'package:otpverify/profile.dart';
import 'package:otpverify/setting.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;
var userName = '';

class LoggedInScreen extends StatefulWidget {
  LoggedInScreen({Key? key}) : super(key: key);

  @override
  _LoggedInScreenState createState() => _LoggedInScreenState();
}

class _LoggedInScreenState extends State<LoggedInScreen> {
  @override
  void initState() {
    getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
          home: Scaffold(
            
          body: Padding(
        padding: const EdgeInsets.only(right:2.0),
        child: SizedBox( //yha 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding( //yha
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(child: BottomNavigationBarExample()),
              ),
              Text(
                'Welcome ' + userName,
                style: TextStyle(fontSize: 30),
              ),
              // Text('(cellnumber: ' + ((_auth.currentUser!.phoneNumber != null) ? ( _auth.currentUser!.phoneNumber) : '') +' uid:' + (_auth.currentUser!.uid != null ? _auth.currentUser!.uid : '') +')'),
              ElevatedButton(
                  onPressed: () => {
                        //sign out
                        signOut()
                      },
                  child: Text('Sign out'))
            ],
          ),
        ),
      )),
    );
  }

  Future getUser() async {
    if (_auth.currentUser != null) {
      var cellNumber = _auth.currentUser!.phoneNumber;
      cellNumber =
          '0' + _auth.currentUser!.phoneNumber!.substring(3, cellNumber!.length);
      debugPrint(cellNumber);
      await _firestore
          .collection('users')
          .where('cellnumber', isEqualTo: cellNumber)
          .get()
          .then((result) {
        if (result.docs.length > 0) {
          setState(() {
            userName = result.docs[0].data()['name'];
          });
        }
      });
    }
  }

  signOut() {
    //redirect
    _auth.signOut().then((value) => Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen())));
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  // BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarExampleState createState() => _BottomNavigationBarExampleState();
 
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample> {

   PageController pageController=PageController();
  int currentIndex=0;
  var currentTab = [
  Home(),
  Profile(),
  Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       body: PageView(
         children: currentTab,
         controller : pageController,
        //  onPageChanged: (int index){
        //    setState(() {
        //      currentIndex: index,
        //    });
        //  },
       ),
       bottomNavigationBar: BottomNavigationBar(backgroundColor:Colors.cyan[50] ,
       currentIndex: currentIndex,
       onTap: (index){
         setState(() {
           currentIndex=index;
           pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
         ThemeData(
              primarySwatch: Colors.blue,
            );
      
         });
       },
        items: [
         BottomNavigationBarItem(
           label: 'Home',
           icon: new Icon(Icons.home),
         ),
         BottomNavigationBarItem(
           label:"profile",
           icon: new Icon(Icons.person),
         ),
         BottomNavigationBarItem(
           label: 'setting',
           icon: new Icon(Icons.settings),
         ),
        
       ],
       ),
    );
  }
}