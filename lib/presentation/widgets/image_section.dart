import 'dart:typed_data';
import 'package:ai_image_generator/presentation/provider/image_generator_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ImageGeneratorProvider>(
      builder: (context, provider, child) {
        if (provider.imageFuture == null) {
          return Container(
            height: 200.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: const Center(
              child: Text(
                'No image generated yet',
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
            ),
          );
        }

        return FutureBuilder<Uint8List>(
          future: provider.imageFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Lottie.asset('assets/animation/loading_animation.json');
            }
            if (snapshot.hasData) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: Image.memory(snapshot.data!, fit: BoxFit.cover),
              );
            }
            return const Text(
              'Failed to generate image',
              style: TextStyle(color: Colors.white),
            );
          },
        );
      },
    );
  }
}