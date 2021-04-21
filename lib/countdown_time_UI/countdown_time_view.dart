import 'package:counter_app_using_cubit1/countdown_time_cubit/countdown_time_cubit.dart';
import 'package:counter_app_using_cubit1/countdown_time_cubit/countdown_time_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CountDownTimeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CountDown Time'),

      ),
      body: BlocProvider<CountDownTimeCubit>(
        create: (context)=>CountDownTimeCubit(60),
        child: BlocBuilder<CountDownTimeCubit,CountDownTimeState>(
          builder: (context,state){
            return Center(child: Text('Countdown Time : ${state.countDown}'));
          },

        ),
      ),
    );
  }
}
