import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: null, icon: Icon(Icons.arrow_back)),
            title: Center(
              child: Text(
                "Profile Page",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            backgroundColor: Colors.transparent,
            actions: [IconButton(onPressed: null, icon: Icon(Icons.logout))],
          ),
          body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(30.0),
                child: Center(
                  child: Column(children: [
                    SizedBox(
                      height: 100,
                      width: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                          image: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/3135/3135715.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Minhajul Islam",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("Minhajul Islam"),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              shape: StadiumBorder(),
                              side: BorderSide.none),
                          child: Text("Edit Profile")),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ListTile(
                        leading: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.cyan.withOpacity(0.20)),
                          child:
                              Icon(Icons.add_card, color: Colors.purpleAccent),
                        ),
                        title: Text("Appointment List"),
                        trailing: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 20.0,
                            ))),
                  ]),
                )
                // height: 250,
                // color: Colors.deepPurple,
                ),
          )),
    );
  }
}
