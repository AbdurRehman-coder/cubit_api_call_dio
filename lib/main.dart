import 'package:bloc_rohit_semriwal/data/repository/post_repository.dart';
import 'package:bloc_rohit_semriwal/logic/cubit/post_cubit.dart';
import 'package:bloc_rohit_semriwal/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => PostsCubit(),
        child: MyListWidget(),
      ),
    );
  }
}
