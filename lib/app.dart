import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_black_web/bloc/app_bloc.dart';
import 'package:the_black_web/injection.dart';
import 'package:the_black_web/screens/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        // primarySwatch: Colors.grey,
        primaryColor: const Color(0xFF424242),
        primaryColorLight: const Color(0xFF6d6d6d),
        primaryColorDark: const Color(0xFF1b1b1b),
      ),
      home: BlocProvider(
          create: (context) => getIt<AppBloc>(), child: const HomePage()),
    );
  }
}
