import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_coding/bloc/rs_bloc.dart';
import 'package:test_coding/ui/Screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RsBloc>(
      create: (context) => RsBloc(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
