import 'package:ai_image_generator/presentation/provider/image_generator_provider.dart';
import 'package:ai_image_generator/presentation/widgets/generate_button.dart';
import 'package:ai_image_generator/presentation/widgets/image_section.dart';
import 'package:ai_image_generator/presentation/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AiTextToImageGenerator extends StatelessWidget {
  const AiTextToImageGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<ImageGeneratorProvider>(
      create: (BuildContext context) {
        return  ImageGeneratorProvider();
      },
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple.shade300, Colors.indigo.shade700],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 50.h),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FittedBox(
                    child: Text(
                      "AI Image Generator",
                      style: TextStyle(
                        fontSize: 36.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                   const InputField(),
                  SizedBox(height: 20.h),
                  const GenerateButton(),
                  SizedBox(height: 30.h),
                  const ImageSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}