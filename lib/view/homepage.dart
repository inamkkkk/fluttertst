import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/constants/constants.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../Widgets/UperportionWidget.dart';
import '../Widgets/headerWidget.dart';
import '../Widgets/titleWidget.dart';
import '../controller/language_controller.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var a = languageController();
  void getreasult()async{
  bool result = await InternetConnectionChecker().hasConnection;
  if(result == true) {
    setState(() {
      wificlr = Colors.green;
    });

  } else {
    setState(() {
      wificlr = Colors.red;
    });


  }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getreasult();
    a.loadJson();

  }
  @override
  Widget build(BuildContext context) {
    getreasult();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: SafeArea(
          child: Container(

            child: Column(


              children: [
                uperPortion(),
                header(),
                Divider(thickness: 2, color: Colors.blue,),
                SizedBox(height: 30,),
                title(),



              ],
            ),
          ),
        ),
      ),
    );
  }
}

