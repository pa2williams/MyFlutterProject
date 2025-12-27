
import 'package:flutter/material.dart';
import 'dart:async';

void showTextOverlay({
  required BuildContext context,
  required void Function(String value) onSubmitted,
}) {
  final overlay = Overlay.of(context);
  final controller = TextEditingController();

  late OverlayEntry entry;
  entry = OverlayEntry(
    builder: (context) => Positioned(
      top: 100,
      left: 20,
      right: 20,
      child: Material(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: controller,
                autofocus: true,
              ),
              ElevatedButton(
                onPressed: () {
                  onSubmitted(controller.text);   // <-- send value outward
                  entry.remove();                 // restore screen
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    ),
  );

  overlay.insert(entry);
}