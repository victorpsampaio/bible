import 'dart:async';

import 'package:bible/pages/homescreen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();

  }

  Future<Timer> loadData() async{
    return new Timer(Duration(seconds: 5),onDoneLoading);
  }
  onDoneLoading() async{
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScren()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

      ),
      color: Colors.white,
      child: Center(
        child: Image.asset("assets/ArquiUra.png"),
      ),
    );
  }
}