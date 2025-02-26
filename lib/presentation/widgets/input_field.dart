import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputField extends StatelessWidget {
  const InputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(30.r),
      child: TextField(
        style: TextStyle(color: Colors.black87, fontSize: 16.sp),
        decoration: InputDecoration(
          hintText: 'Describe your image...',
          hintStyle: TextStyle(color: Colors.grey[600], fontSize: 16.sp),
          contentPadding:
          EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}
