import 'package:flutter/material.dart';

enum MediaType { image, text, video }

class Story {
  late final MediaType mediaType;
  final String? url;
  late final double duration;
  late final String caption;
  late final String date;
  late final Color color;
  Story({
    required this.mediaType,
    required this.caption,
    required this.date,
    this.url,
    this.duration = 5.0,
    this.color = Colors.grey,
  });
}
