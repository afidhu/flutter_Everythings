
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tu3 extends StatefulWidget {
  const Tu3({super.key});

  @override
  State<Tu3> createState() => _Tu3State();
}

class _Tu3State extends State<Tu3> {

  bool myValue =false;
  bool swichlist =false;
  var checkRadio ='';
  bool _isEnabled=true;
  bool isSellected1=false;
  bool isSellected2=false;

  final MenuController _menuController =MenuController();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.purple,
                Colors.redAccent,
                Colors.blueAccent,
              ])
            ),
          ),

        ),
        body: Container(
          width: double.infinity,
          height: Get.height*0.86,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text('RichText Widget',style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,decorationColor: Colors.red,decorationThickness: 3)),
                  RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          height: 2,
                          decorationThickness: 3,
                          fontStyle: FontStyle.italic
                        ),
              
                        text: 'Hello',
                        children: [
                          TextSpan(
                            text: ' mama',
                            style: TextStyle(
                              fontSize: 19,
                              decorationStyle: TextDecorationStyle.wavy,
                              color: Colors.blueAccent,
                             inherit: true,
                              decoration: TextDecoration.underline,
                            )
                          ),
                          TextSpan(
                            text: ' dada'
                          ),
                          TextSpan(
                            text: ' kaka',
                              style: TextStyle(
                                color: Colors.redAccent,
                              )
                          ),
                        ]
                      ),
                  ),
                  Divider(),
                  Text('CheckBox Widget',style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,decorationColor: Colors.red,decorationThickness: 3)),
                  Checkbox(
                      value: myValue,
                      onChanged: (val){
                        setState(() {
                          myValue = val!;
                        });
              
                      }
                  ),
                  Divider(),
                  Text('Progress Indicator',style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,decorationColor: Colors.red,decorationThickness: 3)),
                  LinearProgressIndicator(color: Colors.red,minHeight: 10,stopIndicatorColor: Colors.blue,borderRadius: BorderRadius.circular(20),),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue)
                    ),
                      onPressed: (){},
                      child: Text('ElevatedButton')
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: (){},
                    child: Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.red,
                              Colors.blue,
                              Colors.grey,
                            ]
                        )
                      ),
                      child: Text('InkWell,it make Touchable Widget'),
                    )
                  ),
                  Divider(),
                  SwitchListTile(
                      value: swichlist,
                      onChanged: (val){
                        setState(() {
                          swichlist =val;
                          print(swichlist);
                          print(val);
                        });
                      }
                  ),
                  Text('Languages'),
                  RadioListTile(
                    title: Text('Kiswahili'),
                      value: 'Kiswahili',
                    groupValue: checkRadio,
                    onChanged: (val){
                      setState(() {
                        checkRadio =val!;
                      });
                    },
                    onFocusChange: (val){
              
                    },
                  ),
                  RadioListTile(
                    title: Text('english'),
                      value: 'english',
                    groupValue: checkRadio,
                    onChanged: (val){
                      setState(() {
                        checkRadio =val!;
                      });
                    },
                  ),
                  Divider(),
                  Text('Expansion Tile',style: TextStyle(fontWeight: FontWeight.bold),),
                  ExpansionTile(
                      title: Text('See More'),
                    leading: Icon(Icons.comment),
                    backgroundColor: Colors.grey,
                    // enabled: true,
                    expandedAlignment: Alignment.topLeft,
                    textColor: Colors.white,
                    minTileHeight: 3,
              
                    children: [
                      Text('Hello Mama'),
                      Text('Hello kaka'),
                      Text('Hello dad'),
                    ],
                  ),
                  // ExpansionTile(
                  //     title: Text('Euro'),
                  //   leading: Icon(Icons.person_2_outlined),
                  //   backgroundColor: Colors.grey,
                  //
                  //   children: [
                  //     Text('Hello Mama'),
                  //   ],
                  // )
                  Divider(),
                  Text('Opacity',style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,decorationColor: Colors.red,decorationThickness: 3)),
                  Opacity(
                      opacity: 0.5,
                    child: Card(
                      elevation: 10,
                      color: Colors.grey,
                      child: Container(width: 100,height: 100,color: Colors.blue,),
                    ),
                  ),

                  Divider(),
                  Text('FittedBox',style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,decorationColor: Colors.red,decorationThickness: 3)),
                  FittedBox(

                    child: Row(
                      children: [
                        Text('FittedBox is \n the well',),
                        InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: (){},
                            child: Container(
                              width: 100,
                              height: 100,

                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  gradient: LinearGradient(
                                      colors: [
                                        Colors.pink,
                                        Colors.purple,
                                        Colors.grey,
                                      ]
                                  )
                              ),
                              child: FittedBox(child: Text('InkWell,it make Touchable Widget',style: TextStyle(fontSize: 80),)),
                            )
                        ),
                      ],
                    ),
                  ),

                  // Divider(),
                  // Text('MenuAnchor',style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,decorationColor: Colors.red,decorationThickness: 3)),
                  // Container(
                  //   color: Colors.blue,
                  //   width: 100,
                  //   height: 100,
                  //   child: MenuAnchor(
                  //       controller:_menuController ,
                  //       style: MenuStyle(
                  //         backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  //         // alignment: Alignment.center
                  //       ),
                  //       child: Text('data'),
                  //       menuChildren: [
                  //         MenuItemButton(
                  //           child: Text('Copy',style: TextStyle(color: Colors.green),),
                  //         ),  MenuItemButton(
                  //           child: Text('Copy',style: TextStyle(color: Colors.green),),
                  //         ),  MenuItemButton(
                  //           child: Text('Copy',style: TextStyle(color: Colors.green),),
                  //         ),
                  //       ]
                  //   ),
                  // )

                  Divider(),
                  Text('MenuItemButton',style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,decorationColor: Colors.red,decorationThickness: 3)),

                  Switch(
                      value: _isEnabled, onChanged: (val){setState(() {
                        _isEnabled =val;
                      });}
                  ),
                  Card(
                    child: MenuItemButton(
                      onPressed: (){
                        _isEnabled?_successMessage('Success Copied'):null;
                      },
                      child:_isEnabled? Opacity( opacity:1.0, child: Text('Copy')):Opacity( opacity:0.5, child: Text('Copy')),
                    ),
                  ) ,
                  Card(
                    child: MenuItemButton(
                      // style: ButtonStyle(
                      //   backgroundColor: WidgetStatePropertyAll(Colors.grey)
                      // ),
                      onPressed: (){
                        _isEnabled?_successMessage('Success pasted'):null;
                      },
                      child:_isEnabled? Opacity( opacity:1.0, child: Text('Paste')):Opacity( opacity:0.5, child: Text('Paste')),
                    ),
                  ),

                  Divider(),
                  Text('MenuBar',style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,decorationColor: Colors.red,decorationThickness: 3)),

                  MenuBar(
                    style: MenuStyle(
                      padding: WidgetStatePropertyAll(EdgeInsets.all(1)),
                    ),

                      children: [
                        SubmenuButton(

                            style: ButtonStyle(
                            ),
                            onFocusChange: (val){
                            print(val);
                            },
                            menuChildren: [
                              MenuItemButton(

                                child: Text('Item1'),
                              ),MenuItemButton(
                                child: Text('Item1'),
                              ),MenuItemButton(
                                child: Text('Item1'),
                              ),MenuItemButton(
                                child: Text('Item1'),
                              ),
                            ],
                            child: Text('Items')
                        ) ,
                        SubmenuButton(
                            menuChildren: [
                              MenuItemButton(
                                child: Text('Eng'),
                              ),MenuItemButton(
                                child: Text('Kisw'),
                              ),MenuItemButton(
                                child: Text('French'),
                              ),MenuItemButton(
                                child: Text('Indi'),
                              ),
                            ],
                            child: Text('Languages')
                        )
                      ]
                  ),
                  Divider(),
                  Text('RawChip',style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,decorationColor: Colors.red,decorationThickness: 3)),

                  Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     RawChip(
                       label: Text('Delete1'),
                       selected: isSellected1,
                       onSelected: (val){
                         print(val);
                         setState(() {
                           isSellected1 =val;
                         });
                       },
                       selectedColor: Colors.red,
                       backgroundColor: isSellected1? Colors.red:Colors.grey[100],

                     ),
                     Spacer(),
                     RawChip(
                       label: Text('Delete2'),
                       selected: isSellected2,
                       onSelected: (val){
                         print(val);
                         setState(() {
                           isSellected2 =val;
                         });
                       },
                      selectedColor: Colors.red,

                     )
                   ],
                 ),

                  Container(
                    width: 200,
                    height: 100,
                    color: Colors.red,
                    child:AspectRatio(
                        aspectRatio: 16/9,
                      child: Container(
                        color: Colors.purple,
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
        )
    );
  }

  String? _successMessage(String message){
    print(message);
    return null;

  }
}
