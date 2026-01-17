import 'package:flutter/material.dart';
import 'package:flutter_everythings/views/Leassons/getx_router.dart';
import 'package:flutter_everythings/views/Leassons/getxstorage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import '../bottombars/my_bottombar.dart';
import '../charts_graphs/charts_list.dart';
import '../cupertino_wedget/cupertino_list.dart';
import '../data_api/widgets/home_data.dart';
import '../maps/map_screen.dart';
import '../quill_editor/quil_text_editing.dart';
import '../tutorials/tutoriaList.dart';
import '../ui_design/dribble_ui/home_dribble.dart';
import '../ui_design/responsive_uis/responsive_layout.dart';
import '../ui_design/responsive_uis/responsive_ui.dart';
import '../ui_design/youtube_ui/screen/butom_nav.dart';
import 'Leassons/auto_redirect.dart';
import 'Leassons/dependencies.dart';
import 'Leassons/forms_validate.dart';
import 'Leassons/getBuilder.dart';
import 'Leassons/imagepicker.dart';
import 'Leassons/slider_caurol.dart';
import 'Leassons/videoplayer.dart';
import 'Leassons/workers.dart';

// Future<void> myStorage()async{
//   await GetStorage.init();
//
// }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _isThemed = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Flutter EveryThings'),
         centerTitle: true,
        actions: [
         Obx(()=> Switch(
             value: _isThemed.value,
             onChanged: (val){
               _isThemed.value =val;

               _isThemed.value? Get.changeThemeMode(ThemeMode.light): Get.changeThemeMode(ThemeMode.dark);
               // Get.changeThemeMode(ThemeMode.light);
             }
         ))
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Center(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            physics:  BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: [
              MaterialButton(
                key: Key('GetxRouter1'),
                textColor: Colors.white,
                  color: Colors.deepOrange,
                  onPressed: () async {
                  // Get.off(GetxRouter1());//This enable you to go without come back
                  //
                    Get.to(()=>GetxRouter1(),
                      // fullscreenDialog: true,
                      curve: Curves.bounceInOut,
                      transition: Transition.zoom,
                      duration: Duration(seconds: 1),

                    );

                 // var data = await   Get.to(GetxRouter1());
                 // print('data is $data');
                  },
                child: Text('Router', style: GoogleFonts.farsan(
                  fontSize: 20,
                  textStyle: TextStyle()
                ),),
              ),
              MaterialButton(
                color: Colors.green,
                  onPressed: (){
                  Get.to(GetxStorage());
                  },
                child: Text('GetStorage'),
              ),
              MaterialButton(
                color: Colors.blueAccent,
                onPressed: (){
                  Get.to(GetBuilders());
                },
                child: Text('GetBuilder'),
              ),
              MaterialButton(
                color: Colors.green,
                onPressed: (){
                  Get.to(Workerss());
                },
                child: Text('workers'),
              ),
              MaterialButton(
                color: Colors.cyan,
                onPressed: (){
                  Get.to(DependenciesEnjection());
                },
                child: Text('Dependencies'),
              ),
              MaterialButton(
                color: Colors.cyan,
                onPressed: (){
                  Get.to(ImagePickerFromSource());
                },
                child: Text('image Picker'),
              ),
              MaterialButton(
                color: Colors.deepOrangeAccent,
                onPressed: (){
                  Get.to(MyVideoPlayer());
                },
                child: Text('video player'),
              ),
              MaterialButton(
                color: Colors.pinkAccent,
                onPressed: (){
                  Get.to(MyFormValidate());
                },
                child: Text('Form Validation'),
              ),

              MaterialButton(
                color: Colors.indigoAccent,
                onPressed: (){
                  Get.to(AutoRedirect());
                },
                child: Text('Auto Redirect'),
              ),

              MaterialButton(
                color: Colors.blue,
                onPressed: (){
                  Get.to(TutorialLists());
                },
                child: Text('Tutorial Lists'),
              ),


              MaterialButton(
                color: Colors.grey,
                onPressed: (){
                  Get.to(SliderCarousel());
                },
                child: Text('Slider Carousel'),
              ),

              MaterialButton(
                color: Colors.blueGrey,
                onPressed: (){
                  Get.to(ChartsLists());
                },
                child: Text('Charts And Graphs'),
              ),

              MaterialButton(
                color: Colors.blueGrey,
                onPressed: (){
                  Get.to(MyBottomBar());
                },
                child: Text('bottomBar'),
              ),
              MaterialButton(
                color: Colors.blueAccent,
                onPressed: (){
                  Get.to(MapScreen());
                },
                child: Text('Map'),
              ),
              MaterialButton(
                color: Colors.amberAccent,
                onPressed: (){
                  Get.to(cupertinoWedget());
                },
                child: Text('cupertino Widget'),
              ),

              MaterialButton(
                color: Colors.greenAccent,
                onPressed: (){
                  Get.to(()=>QuilTextEditing());
                },
                child: Text('QuilTextEditing'),
              ),

              MaterialButton(
                color: Colors.blueGrey,
                onPressed: (){
                  Get.to(()=>HomeData());
                },
                child: Text('Data Api & Hive'),
              ),

              MaterialButton(
                color: Colors.amberAccent,
                onPressed: (){
                  Get.to(()=>HomeDribble());
                },
                child: Text('Dribble Ui'),
              ),

              MaterialButton(
                color: Colors.blue,
                onPressed: (){
                  Get.to(()=>ResponsiveUi());
                },
                child: Text('Responsive Ui'),
              ),

              MaterialButton(
                color: Colors.greenAccent,
                onPressed: (){
                  Get.to(()=>ResponsiveLayout());
                },
                child: Text('Responsive Layout'),
              ),

              MaterialButton(
                color: Colors.indigo[100],
                onPressed: (){
                  Get.to(()=>BottomNav());
                },
                child: Text('Youtube Ui'),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
