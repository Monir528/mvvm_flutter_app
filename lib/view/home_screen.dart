import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_project/utils/routes/routes.dart';
import 'package:mvvm_project/utils/routes/routes_name.dart';
import 'package:mvvm_project/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
            children:[
              InkWell(
                onTap: (){
                    // Utils.toastMessage("You are now Login screen");
                    // Navigator.pushNamed(context, RoutesName.login);
                  Utils.flushBarErrorMessage("message not showing ", context);
                },
                child: Text("go to Login Screen"),
              )
            ]
        ),
      )
    );
  }
}
