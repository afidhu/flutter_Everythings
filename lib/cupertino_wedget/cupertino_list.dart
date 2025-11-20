import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cupertinoWedget extends StatefulWidget {
  const cupertinoWedget({super.key});

  @override
  State<cupertinoWedget> createState() => _cupertinoWedgetState();
}

class _cupertinoWedgetState extends State<cupertinoWedget> with SingleTickerProviderStateMixin {

  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
_tabController = TabController(vsync: this, length: 3);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:CupertinoNavigationBar(
        middle: Text('Cupertino Widget', style: TextStyle(color: Colors.blueAccent),),
      brightness: Brightness.light,
       bottom: TabBar(
         labelStyle: TextStyle(
           backgroundColor: Colors.amber
         ),
         controller: _tabController,
           tabs: [
         Text('data1'),
         Text('data2'),
         Text('data3'),
       ])

      ),
      body: Center(
        child: ListView(
          children: [
            CupertinoAlertDialog(
              actions: [
                CupertinoDialogAction(
                  child: Text('Action1'),
                  onPressed: () {
                  }
                ),
                CupertinoDialogAction(
                  child: Text('Action2'),
                  onPressed: () {
                  }
                ),
                CupertinoDialogAction(
                  child: Text('Action3'),
                  onPressed: () {
                  }
                ),
              ]
            ),

            CupertinoButton(
              color: Colors.amber,
              child: Text('button', style: TextStyle(color: Colors.white),),
              onPressed: () {
                print('Cupertino Button');
              }
            ),
            SizedBox(height: 20,),
            CupertinoButton.filled(
              child: Text('Cupertino Button'),
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return CupertinoActionSheet(
                      title: Text("Options"),
                      message: Text("Choose an action"),
                      actions: [
                        CupertinoActionSheetAction(
                          child: Text("Option 1"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        CupertinoActionSheetAction(
                          child: Text("Option 2"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                      cancelButton: CupertinoActionSheetAction(
                        child: Text("Cancel"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    );
                  },
                );
              },
            ),


            SizedBox(height: 20,),
CupertinoSwitch(value: true, onChanged: (val){}),



SizedBox(height: 20,),
            CupertinoActivityIndicator(),
            SizedBox(height: 20,),

            CupertinoActionSheet(
              title: Text('data List'),
              actions: [
              Text('data1'),
              Text('data2'),
              Text('data3'),
              Text('data3'),
              Text('data4'),
              Text('data5'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.featured_video)),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag)),
        ],
      )
,
    );
  }
}
