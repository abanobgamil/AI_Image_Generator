import 'package:ai_image_generator/presentation/provider/image_generator_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class GenerateButton extends StatelessWidget {
  const GenerateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ImageGeneratorProvider>(
      builder: (context, provider, child) {
        return SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () => provider.generateImage(),
            icon: const Icon(Icons.auto_awesome, color: Colors.white),
            label: Padding(
              padding: EdgeInsets.symmetric(vertical: 14.h),
              child: Text("Generate Image",
                  style: TextStyle(fontSize: 18.sp, color: Colors.white)),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r),
              ),
            ),
          ),
        );
      },
    );
  }
}