import 'package:flutter/material.dart';


class ImagePicker extends StatefulWidget {
  const ImagePicker({super.key});

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  Future<void> getLostData() async {
    final ImagePicker picker = ImagePicker();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.cyan,
              onPressed: getLostData,
              child: Text('Pick Image'),
            )
          ],
        ),
      ),
    );
  }
}
