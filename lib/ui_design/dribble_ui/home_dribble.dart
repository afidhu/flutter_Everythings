import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'emmoton_face.dart';
import 'exercise_list.dart';

class HomeDribble extends StatefulWidget {
  const HomeDribble({super.key});

  @override
  State<HomeDribble> createState() => _HomeDribbleState();
}

class _HomeDribbleState extends State<HomeDribble> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      // appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                spacing: 1,
                children: [
                  Row(
                    spacing: 1,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Hi, Euro', style: TextStyle(color: Colors.white, fontSize: 20),),
                          Text('202/1/202', style: TextStyle(color: Colors.grey, fontSize: 14),),
                        ],
                      ) ,
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue[600],
                        ),
                          child: Icon(Icons.notifications, size: 30,))
                    ],
                  ),

                  Container(
                    // decoration: BoxDecoration(
                    //   color: Colors.blue[400]
                    // ),
                    margin: EdgeInsets.only(top: 25),
                    padding: EdgeInsets.all(12),
                    child:TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.blue[600],
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        prefix: Icon(Icons.search),
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('How do you feel ?', style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),),
                        Icon(Icons.more_horiz)
                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Column(
                       children: [
                         EmmotonFace(),
                         Text('cry')
                       ],
                     )   ,     Column(
                       children: [
                         EmmotonFace(),
                         Text('enjoy')
                       ],
                     )     ,   Column(
                       children: [
                         EmmotonFace(),
                         Text('duh')
                       ],
                     ) ,   Column(
                       children: [
                         EmmotonFace(),
                         Text('duh')
                       ],
                     )
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 25,),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                  gradient: LinearGradient(colors: [
                     Colors.white,
                     Colors.red,
                     Colors.white10
                  ])
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    spacing: 9,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          spacing: 5,
                          children: [
                            Text("Exercise", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                            Icon(Icons.more_horiz, color: Colors.black, fontWeight: FontWeight.bold,)
                          ],
                        ),
                      ),
                     Expanded(
                       child: ListView(
                         children: [
                           ExerciseList(
                             icon: Icons.favorite,
                             messages: "Special skill",
                             number: 20,
                           ),
                           ExerciseList(
                             icon: Icons.book_online_outlined,
                             messages: "write skill",
                             number: 220,
                           ),
                           ExerciseList(
                             icon: Icons.person_2_outlined,
                             messages: "Reading skill",
                             number: 440,
                           ),
                           ExerciseList(
                             icon: Icons.running_with_errors_sharp,
                             messages: "running skill",
                             number: 20,
                           ),
                         ],
                       ),
                     )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.white,items: [
        BottomNavigationBarItem(label: 'Home',icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: 'Home',icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: 'Home',icon: Icon(Icons.home)),
      ]),
    );
  }
}
