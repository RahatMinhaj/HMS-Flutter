import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black, size: 25),
            elevation: 10,
            title: Image(
              image: AssetImage("Assets/Images/IsDB-BISEW.png"),
              width: 150,
            ),
            centerTitle: true,
            backgroundColor: Colors.white.withOpacity(0.2),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.logout))
              // ,
              // RaisedButton(
              //   onPressed: (){},
              //   child: Icon(Icons.logout),
              //   color:Colors.white.withOpacity(0) ,
              // )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),

            child: GridView.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              
              children: [
                Container(

                  height: 200,
                  width: 200,
                  color: Colors.deepPurpleAccent,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.deepPurpleAccent,
                ),

                Container(
                  height: 200,
                  width: 200,
                  color: Colors.deepPurpleAccent,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.deepPurpleAccent,
                )
              ],
            ),
          )),
    ));
  }
}
