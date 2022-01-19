import 'package:flutter/material.dart';
import 'package:project_uas/home/home_view.dart';
import 'package:project_uas/newsapp/newsapp_view.dart';
import 'package:project_uas/profile/profile_view.dart';
import 'package:project_uas/splashscreen/splashscreen_view.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new SplashscreenPage(),
      routes: <String, WidgetBuilder>{
        'Otomotif': (BuildContext context) => new NewsAppOtomotif(),
        'Sports': (BuildContext context) => new NewsAppSport(),
        'Profile': (BuildContext context) => new Profile(),
      },
    ),
  );
}
