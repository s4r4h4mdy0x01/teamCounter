import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_cubit.dart';

import 'package:points_counter/points.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
  
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
       debugShowCheckedModeBanner: false,
        home:  Points_Counter() ,
      ),
    );
  }
}

