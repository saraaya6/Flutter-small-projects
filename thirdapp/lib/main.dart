import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: saraColors.royalBlue,
          title: Column(
            children: [
              SizedBox(
                height: 2,
              ),
              Text(
                "Bit By Bit",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.white
                ),
              ),
              Text(
                "learn step by step",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: const Color.fromARGB(255, 219, 216, 216)


                ),
              ),    
            ],
          ),
          actions: [
            Icon(
              Icons.notifications_active_outlined,
              color: Colors.white
              ),
            SizedBox(width: 8),
            Icon(
              Icons.menu,
              color: Colors.white
              ),
            SizedBox(width: 8),  
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 30,
            right: 20
          ),
          child:SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CostemCard(),
                SizedBox(height: 20,),
                Text(
                  "Tasks for today",
                  style: TextStyle(
                    fontSize: 30
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TaskCard(
                    "GO to school ",
                    Icons.check_circle_outline,
                    Icons.settings,
                    saraColors.royalBlue,
                  ),
                  SizedBox(height: 20,),
                  TaskCard(
                    "Sleep early! ",
                    Icons.check_circle_outline,
                    Icons.settings,
                    saraColors.periwinkleBlue,
                  ),
                  SizedBox(height: 20,),
                  TaskCard(
                    "Do your homework  ",
                    Icons.check_circle_outline,
                    Icons.settings,
                    saraColors.pinkBlush,
                  ),
                  SizedBox(height: 20,),
                  TaskCard(
                    "Do something bro! ",
                    Icons.check_circle_outline,
                    Icons.settings,
                    saraColors.mintGreen,
                  ),
          
                  

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TaskCard extends StatelessWidget {
   TaskCard(
    this.text,
    this.icon1,
    this.icon2,
    this.backgroundColor,
   );
   

final String text;
final IconData icon1;
final IconData icon2;
final Color backgroundColor;

  @override
  Widget build(BuildContext context){
    return Container(
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 15,
                      bottom: 15,
                    ),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(
                        16
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.circle_outlined,
                        ),
                        Text(
                          text,
                          style: TextStyle(
                            fontSize: 15
                          ),
                        ),
                        Icon(
                          Icons.settings,
                        ),
                    ],),
                  );
  }
}

class Card extends StatelessWidget {
  Card(

    this.text1,
    this.text2,
    this.iconData,
    this.backgroundColor,
  );

  final String text1;
  final String text2;
  final IconData iconData;
  final Color backgroundColor;



  @override
  Widget build(BuildContext context) {
    return Center(
          child: Container(
            padding: EdgeInsets.all(
              16
            ),
          width: 200,
          height: 120,
          decoration: BoxDecoration(
            color:backgroundColor,
            borderRadius: BorderRadius.circular(
              16
              ),
            
            
            ),


            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      iconData,
                      color: Colors.white

                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                  children: [
                    Text(
                      text1,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                      ),
                    ),

                    SizedBox(
                      width: 90,
                    ),

                    Text(
                      text2,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
  }  
}

class CostemCard extends StatelessWidget {
  const CostemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    "Today",
                    "6",
                    Icons.notification_add,
                    saraColors.periwinkleBlue,
                  ),
                  Card(
                    "Next day",
                    "7",
                    Icons.next_plan,
                    saraColors.royalBlue,
                    ),
                ],
              ),
              SizedBox(
                height: 40,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    "Must do",
                    "6",
                    Icons.more,
                    saraColors.royalBlue,
                  ),
                  Card(
                    "all",
                    "6",
                    Icons.all_inbox,
                    saraColors.periwinkleBlue,
                  ),
                ],
              ),
            ],
          );
  }
}

// ignore: camel_case_types
class saraColors {
  static Color periwinkleBlue = Color.fromARGB(255, 117, 139, 220); 
  static Color mintGreen = Color(0xFFD0F4EA); 
  static Color pinkBlush = Color(0xFFFFC0F5); 
  static Color royalBlue = Color(0xFF3B6BB9); 
  static Color stoneGrey = Color(0xFF91949B); 
  static Color transparent = Color(0x00000000);
}
