import 'package:flutter/material.dart';

class ExerciseList extends StatelessWidget {
  final IconData icon;
  final String messages;
  final int number;
  const ExerciseList({super.key, required this.icon, required this.messages, required this.number});

  @override
  Widget build(BuildContext context) {
    return       Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        child: ListTile(
          title: Text(messages, style: TextStyle(color: Colors.black, ),),
          leading: Container(
          padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.orange,
            
          ),
          child: Icon(icon, color: Colors.white,)),
          trailing: Icon(Icons.more_horiz, color: Colors.black, size: 20,),
          subtitle: Text.rich(

              TextSpan(
                  text: number.toString(),
                  style: TextStyle(color: Colors.red,fontSize: 15),

                  children: [
                    TextSpan(
                        text: ' Subscribers',
                        style: TextStyle(color: Colors.black)
                    ),
                  ]
              )
          ),
        ),
      ),
    );
  }
}
