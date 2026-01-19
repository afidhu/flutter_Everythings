import 'package:flutter/material.dart';
class Palette{
   static const  Color scaffold = Color(0xFF0FF323);
   static const  Color fbBlue = Color(0xFF2B2D30);
   static const  LinearGradient createRoomGradient = LinearGradient(colors:
       [
         Color(0xFF0FF323),
         Color(0xFF0FF323),

       ]
   );
   static const  Color online = Colors.green;

   static   LinearGradient storyGradient = LinearGradient(
     begin: Alignment.topCenter,
     end: Alignment.topCenter,
     colors: [
       Colors.transparent,
       Colors.black26,

     ]
   );
}