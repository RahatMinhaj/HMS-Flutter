import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import './main_drawer.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

    static const routeName = '/details-screen';

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Details Page'),
      
      ),
      drawer: MainDrawer(),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Text('we are in the Details page now',
           style: TextStyle(
            fontSize: 22,),
           
           ),
            FloatingActionButton(
              child: Icon(Icons.arrow_back_ios),
              onPressed: (){
                Navigator.pop(context);
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