import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hmsmanagementproject/screens/main_drawer.dart';
import 'details_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: MainDrawer(
        
      ),
       
      
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Text('we are in the home page now',
           style: TextStyle(fontSize: 22,),
           
           ),
           RaisedButton(
            child: Text('Go to details'),
            onPressed: (){
              Navigator.of(context).pushNamed(DetailsScreen.routeName);
            },
           ),

          //  TextButton(
          //         onPressed: () {
          //           // print("Registered Button Clicked");

          //           Navigator.pushNamedAndRemoveUntil(
          //               context, DetailsScreen.idScreen, (route) => false);
          //         },
          //         child: Text("Already have an Account? Login Here"))
          ],
        ),
        ),
    );


  }
}