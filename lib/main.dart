import 'package:flutter/material.dart';
import 'package:the_black_web/injection.dart' as di;

import 'app.dart';
import 'screens/home_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.setup();
  runApp(const App());
}
