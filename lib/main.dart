import 'package:counter_app_using_cubit1/countdown_time_UI/countdown_time_view.dart';
import 'package:counter_app_using_cubit1/countdown_time_cubit/countdown_time_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CountDownTimeView(),


    );
  }
}
