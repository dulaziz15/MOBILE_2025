import 'package:flutter/material.dart';
import 'dart:io';
import 'package:foto_filter_caraouse/widget/filter_carousel.dart';

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filter Foto - 244107023009')),
      body: PhotoFilterCarousel(imagePath: imagePath),
    );
  }
}
