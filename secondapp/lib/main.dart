import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkTheme= false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),//يخلي المود تلقائي 
      darkTheme: ThemeData.dark(), //يخلي المود تلقائي
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,  
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              isDarkTheme= !isDarkTheme;
              setState(() {});
            },
            child : Text(
              "Theme Mode"
            ),
        ),
      ),
    ),
  );
  }
}