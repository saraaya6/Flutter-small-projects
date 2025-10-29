import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [

            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 22),
              color: Color.fromARGB(255, 220, 241, 236),
              child: Center(
                child: Text(
                  ' أذكاري ',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0D6F58),
                  ),
                ),
              ),
            ),


            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // النص
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Text(
                        'سُبْحَانَ اللَّهِ',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0D6F58),
                        ),
                      ),
                    ),


                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 220,
                          height: 220,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: RadialGradient(
                              colors: [
                                Color.fromARGB(224, 202, 244, 202),
                                Color.fromARGB(90, 219, 242, 219),
                                const Color.fromARGB(0, 14, 15, 14)
                              ],
                              center: Alignment.center,
                              radius: 0.8,
                            ),
                          ),
                        ),
                        Text(
                          '$counter',
                          style: TextStyle(
                            fontSize: 86,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 38),

                    
                    SizedBox(
                      width: 220,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            counter++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0D6F58),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: Text(
                          'تسبيحة',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 236, 239, 238),
                            
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 12),


                    TextButton(
                      onPressed: () {
                        setState(() {
                          counter = 0;
                        });
                      },
                      
                      child: Text(
                        'إعادة',
                        style: TextStyle(
                          fontSize: 17,
                          color: const Color.fromARGB(174, 0, 0, 0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
