import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class GridViewImage extends StatefulWidget {
  const GridViewImage({super.key});

  @override
  State<GridViewImage> createState() => _GridViewImageState();
}

class _GridViewImageState extends State<GridViewImage> {
  final ImagePicker _picker = ImagePicker();
  final List <XFile> _image = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Image Picker App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
          ),
          itemCount: _image.length,
          itemBuilder: (context, index) {
            return Image.file(File(_image[index].path));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: getImage,
        child: const Icon(Icons.camera_alt),
      ),
    );
  }

  Future<void> getImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
     image != null ?  _image.add(image) : 0;
    });
  }
}
