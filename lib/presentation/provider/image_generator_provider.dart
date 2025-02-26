import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:stability_image_generation/stability_image_generation.dart';

class ImageGeneratorProvider with ChangeNotifier {
  String _query = '';
  Future<Uint8List>? _imageFuture;
  final StabilityAI _ai = StabilityAI();
  final String apiKey = 'sk-PkDZXg8fLwfxEUYG4BojWUq1gUviitRK7UwO4fRwPPRR1fVc';
  final ImageAIStyle imageAIStyle = ImageAIStyle.digitalPainting;

  String get query => _query;
  Future<Uint8List>? get imageFuture => _imageFuture;

  void setQuery(String query) {
    _query = query;
    notifyListeners();
  }

  void generateImage() {
    if (_query.isEmpty) {
      return;
    }

    _imageFuture = _ai.generateImage(
      apiKey: apiKey,
      imageAIStyle: imageAIStyle,
      prompt: _query,
    );
    notifyListeners();
  }
}