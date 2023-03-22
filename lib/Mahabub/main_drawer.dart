import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'details_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              Navigator.of(context).pushNamed(DetailsScreen.routeName);
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
    );
  }
}