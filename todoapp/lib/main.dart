import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: IslamColors.mintGreen,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hello Lenah',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "you have work to do",
                  style: TextStyle(color: Colors.black,fontSize: 15),
                ),
              ],
            ),
            centerTitle: false,
            actions: [
              IconButton(
                icon: const Icon(Icons.notification_add, color: Colors.black),
                onPressed: () {
                  // Handle notification button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.menu, color: Colors.black),
                onPressed: () {
                  // Handle menu button press
                },
              ),
            ],
          
          ),
          body: Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomCard(),
                  SizedBox(height: 20),
                  Text("tasks of the day",
                      style: TextStyle(
                        fontSize: 25,
                        
                      )),
                  SizedBox(height: 20),
                 TaskCard(
                   'Do some shopping',
                   IslamColors.mintGreen,
                 ),
                 SizedBox(height: 20),
                  TaskCard(
                   'go to the gym',
                   IslamColors.periwinkleBlue,
                 ), 
                 SizedBox(height: 20),
                 TaskCard(
                   'Complete the project',
                   IslamColors.stoneGrey,
                 ),
                  SizedBox(height: 20),
                  TaskCard(
                   'Attend the meeting',
                   IslamColors.softYellow,
                 ),
                  SizedBox(height: 20),
                  TaskCard(
                   'Read a book',
                   IslamColors.pinkBlush,
                 ),
                  SizedBox(height: 20),
                  TaskCard(
                   'Call mom',
                   IslamColors.royalBlue,
                 ),
                 SizedBox(height: 20),
                ],
              )
            ),
          ),
        ),
      );
  }
}


class TaskCard extends StatelessWidget {
   TaskCard(
     this.text1,
     this.backgroundColor,
   );
final String text1;
final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return  Container(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Icon(Icons.circle_outlined, color: Colors.black, size: 30),  
                      Text(text1, style: TextStyle(fontSize: 20, color: Colors.black)),
                      Icon(Icons.more_vert, color: Colors.black, size: 30),
                      ],
                    ),
                  );
  }
}


class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      'Today',
                       '6',
                       Icons.notification_add,
                       IslamColors.mintGreen,
                    ),
                    Card(
                      'Tomorrow',
                       '5',
                       Icons.next_plan,
                       IslamColors.softYellow,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      'Next Week',
                       '3',
                       Icons.calendar_month,
                       IslamColors.pinkBlush,
                    ),
                    Card(
                      'Next Month',
                       '2',
                       Icons.calendar_today,
                       IslamColors.periwinkleBlue,
                    ),
                  ],
                ),
              ],
            );
  }
}







class Card extends StatelessWidget {
   Card(
    this.Text1,
    this.Text2,
    this.iconData,
    this.backgroundColor,
   );
final String Text1;
final String Text2;
final IconData iconData;
final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Container(
              padding: EdgeInsets.all(16),
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                color: backgroundColor,
              ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          iconData,
          color: Colors.black,
          size: 30,
        ),
      ),
      SizedBox(height: 5),
      Row(
        children: [
         Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          Text1,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.start,
        ),
      ),
       const Spacer(),
      Text(
        Text2,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.left,
      ),
          
     ], ),
        ],
      ),
            ),
          );  }
}




class IslamColors {
  static Color periwinkleBlue = Color(0xFFB4C4FE); 
  static Color softYellow = Color(0xFFFFF580); 
  static Color mintGreen = Color(0xFFD0F4EA); 
  static Color pinkBlush = Color(0xFFFFC0F5); 
  static Color iceBlue = Color(0xFFF4F7FF); 
  static Color royalBlue = Color(0xFF3B6BB9); 
  static Color snowWhite = Color(0xFFFAFCFC); 
  static Color stoneGrey = Color(0xFF91949B); 
  static Color transparent = Color(0x00000000);
}
