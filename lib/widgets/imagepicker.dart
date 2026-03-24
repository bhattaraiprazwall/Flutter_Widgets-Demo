import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imagepicker extends StatefulWidget {
  const Imagepicker({super.key});

  @override
  State<Imagepicker> createState() => _ImagepickerState();
}

class _ImagepickerState extends State<Imagepicker> {
  XFile? file;
  final ImagePicker _picker = ImagePicker();
  List<XFile>? files;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Picker')),
      floatingActionButton: TextButton(
        onPressed: () {},
        child: Icon(Icons.local_dining),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Center(
                child: file == null
                    ? Text('Image not Picked')
                    : Image.file(File(file!.path), fit: BoxFit.cover),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final XFile? photo = await _picker.pickImage(
                  source: ImageSource.gallery,
                );
                setState(() {
                  file = photo;
                });
                print('Photo path ........' + photo!.path);
              },
              child: Text('Choose an image'),
            ),
            ElevatedButton(
              onPressed: () async {
                // final XFile? photo = await _picker.pickImage(
                //   source: ImageSource.gallery,

                final List<XFile> photos = await _picker.pickMultiImage();
                setState(() {
                  files = photos;
                });
                for(int i=1;i<files!.length;i++)
                {
                  print(files![i].path);
                }
              },
              child: Text('Choose Images'),
            ),
          ],
        ),
      ),
    );
  }
}
