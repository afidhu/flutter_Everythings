import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerFromSource extends StatefulWidget {
  const ImagePickerFromSource({super.key});

  @override
  State<ImagePickerFromSource> createState() => _ImagePickerFromSourceState();
}

class _ImagePickerFromSourceState extends State<ImagePickerFromSource> {


  final ImagePicker picker = ImagePicker();


  var imagePicked=''.obs;

  Future<void> pickImages() async {

// Pick an image.
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    imagePicked.value =image!.path;

// Capture a photo.
//     final XFile? photo = await picker.pickImage(source: ImageSource.camera);
// // Pick a video.
//     final XFile? galleryVideo = await picker.pickVideo(
//       source: ImageSource.gallery,
//     );
// // Capture a video.
//     final XFile? cameraVideo = await picker.pickVideo(source: ImageSource.camera);
// // Pick multiple images.
//     final List<XFile> images = await picker.pickMultiImage();
// // Pick singe image or video.
//     final XFile? media = await picker.pickMedia();
// // Pick multiple images and videos.
//     final List<XFile> medias = await picker.pickMultipleMedia();

  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [

          Obx(()=>AspectRatio(aspectRatio:16/9 ,child:  imagePicked.isNotEmpty? Image.file(File(imagePicked.value)):null,)),


            MaterialButton(
              color: Colors.cyan,
              onPressed: pickImages,
              child: Text('Pick Image'),
            )
          ],
        ),
      ),
    );
  }
}
