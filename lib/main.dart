import 'package:bloc_rudiments/cubits/internet_cubit.dart';
import 'package:bloc_rudiments/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(),
      child: const MaterialApp(
        title: 'BLoC App',
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
