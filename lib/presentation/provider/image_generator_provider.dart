import 'dart:typed_data';

import 'package:ai_image_generator/presentation/provider/api_key.dart';
import 'package:flutter/material.dart';
import 'package:stability_image_generation/stability_image_generation.dart';

class ImageGeneratorProvider with ChangeNotifier {
  String _query = '';
  Future<Uint8List>? _imageFuture;
  final StabilityAI _ai = StabilityAI();
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
      apiKey: ApiKey.apiKey,
      imageAIStyle: imageAIStyle,
      prompt: _query,
    );
    notifyListeners();
  }
}