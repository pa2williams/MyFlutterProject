import 'package:flutter/material.dart';

/// Enum for strongly-typed status values
enum PostStatus { red, yellow, green,amber }

/// Map of status enums to colors
const Map<PostStatus, Color> statusColors = {
  PostStatus.red: Colors.red,
  PostStatus.yellow: Colors.yellow,
  PostStatus.green: Colors.greenAccent,
   PostStatus.amber: Colors.deepOrangeAccent,
};

/// Helper function to get a color from a string
Color getStatusColorFromString(String status) {
  switch (status.toUpperCase()) {
    case "RED":
      return statusColors[PostStatus.red]!;
    case "AMBER":
      return statusColors[PostStatus.amber]!;
    case "YELLOW":
      return statusColors[PostStatus.yellow]!;
    case "GREEN":
      return statusColors[PostStatus.green]!;
    default:
      return Colors.grey; // fallback
  }
}