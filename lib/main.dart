import 'package:flutter/material.dart';

// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';
import 'package:otpverify/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}


class App extends StatelessWidget {
  // const App({Key? key}) : super(key: key);
  final Future<FirebaseApp> _initialisation = Firebase.initializeApp();

  

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialisation,
      // initialData: InitialData,
      builder: ( context,  snapshot) {
        if(snapshot.hasError){
          return Center(
            child: Text("Could not load app"),
          );
        }
        if(snapshot.connectionState==ConnectionState.done){
          return MaterialApp(
            title: "Phone Verification",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor:Colors.green,
              primarySwatch:Colors.lightGreen,
              inputDecorationTheme:InputDecorationTheme(
                labelStyle: TextStyle(color: Colors.grey),

              ),
              backgroundColor: Colors.blueGrey,
            ),
            home: LoginScreen(),
          );
        }
       return Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children:<Widget> [
               CircularProgressIndicator(
                 backgroundColor: Theme.of(context).primaryColor,
               ),
             ],
           ),
         ],
       );
      },
    );
     
    
  }
}