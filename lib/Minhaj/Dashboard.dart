import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          drawer: Drawer(

          ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black , size: 30) ,

        elevation: 10,
        title: Image(image: AssetImage("Assets/Images/IsDB-BISEW.png" ), width:150,),
        centerTitle: true,


        backgroundColor: Colors.white.withOpacity(0.2),
        actions: [
          RaisedButton(
            onPressed: (){},
            child: Icon(Icons.logout),
            color:Colors.blue.withOpacity(0.0) ,
          )
        ],
      ),
          
          body:GridView.count(crossAxisCount: 2)
    ));
  }
}
