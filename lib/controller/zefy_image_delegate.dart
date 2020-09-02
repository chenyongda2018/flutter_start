import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zefyr/src/widgets/image.dart';
import 'dart:io';
import 'package:flutter/material.dart';

class MyAppZefyrImageDelegate implements ZefyrImageDelegate<ImageSource> {


  @override
  Future<String> pickImage(ImageSource source) async {
    final file = await ImagePicker.pickImage(source: source);
    if (file == null) return null;
    // We simply return the absolute path to selected file.
    return file.uri.toString();
  }

  @override
  Widget buildImage(BuildContext context, String key) {
    final file = File.fromUri(Uri.parse(key));
    final image = FileImage(file);
    return Image(
      image: image,
    );

  }

  @override
  ImageSource get cameraSource => ImageSource.camera;

  @override
  ImageSource get gallerySource => ImageSource.gallery;
}