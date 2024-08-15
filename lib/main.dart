import 'package:flutter/material.dart';
import 'package:flutter_health/color_themes_file/theme_data.dart';
import 'package:flutter_health/models/model.dart';
import 'package:flutter_health/screens/empty_main_screen.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import 'color_themes_file/theme_notifier.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  // hive data intialisation of user
  var directory = await getApplicationDocumentsDirectory();
  Hive.registerAdapter(UserModelAdapter());
  Hive.init(directory.path);
  await Hive.openBox<UserModel>('user');

  final userbox = Hive.box<UserModel>('user');

  userbox.put(0,UserModel(firstName: "Ramesh",
      lastName: "Kapoor",
      userName: "Ramesh Kapoor",
      passWord: "123456",
      birthDate: "02/01/1990",
      mobile: "1234567890",
      email: "rameshkapoor1999@gmail.com",
      gender: "Male")
  );

  print(userbox.values.toList());
  runApp(ChangeNotifierProvider(
    create: (_) => ThemeNotifier(),
    child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      title: 'Flutter Demo',
      // added this v2
      // theme: customLightTheme,
      // darkTheme: customDarkTheme,
      // themeMode: _themeMode,

      // added this v3
      themeMode: themeNotifier.themeMode, // Apply the theme mode from the notifier
      theme: ThemeData.light(), // Light theme
      darkTheme: ThemeData.dark(),

      home: Emptymainscreen(),
    );
  }
}

