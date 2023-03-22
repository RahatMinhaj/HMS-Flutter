import 'package:flutter/material.dart';
import 'package:hms_flutter/ProfilePage.dart';

void main() {
  runApp(ProfilePage());
}

class MainClass extends StatelessWidget {
  const MainClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class profilePage extends StatelessWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(),
      ),
    );
  }
}
