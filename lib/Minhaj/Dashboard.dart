import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
  static const routeName = '/details-screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  color: Theme.of(context).primaryColor,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          margin: EdgeInsets.only(
                            top: 30,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU'
                            ),
                                fit: BoxFit.fill ),

                          ),
                        ),
                        Text(
                          'Dr.Mahendra',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white
                          ),
                        ),
                        Text(
                          'drmahendra@gmail.com',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile',
                    style: TextStyle(
                        fontSize: 18),
                  ),
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed(Dashboard.routeName);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings',
                    style: TextStyle(
                        fontSize: 18),
                  ),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(Icons.arrow_back),
                  title: Text('Logout',
                    style: TextStyle(
                        fontSize: 18),
                  ),
                  onTap: null,
                ),
              ],
            ),
          ),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black, size: 25),
            elevation: 10,
            // title: Image(
            //   image: AssetImage("Assets/Images/IsDB-BISEW.png"),
            //   width: 150,
            // ),
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
                GestureDetector(
                  onTap: () {
                    print('Hello i am printed');
                  },
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Center(
                      child: Card(
                        elevation: 15,
                        // color: Colors.lightGreen,
                        child: Container(
                          decoration: BoxDecoration(
                              // color: Colors.deepOrangeAccent,
                              borderRadius: BorderRadius.circular(25)),
                          constraints: BoxConstraints.expand(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(image: AssetImage("Assets/Images/Doctor.png"))
                              ,
                              Icon(
                                Icons.health_and_safety,
                                size: 50,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Doctors",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
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
