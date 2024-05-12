import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class TextFormWidget extends StatefulWidget {
  TextFormWidget({
    super.key,
    required this.controller,
    required this.text,
    this.validation,
    this.keyboardType = TextInputType.text,
    this.isLastInput = false,
    this.isPassword = false,
    this.enable = true,
    this.onTap,
    this.onSaved,
    this.prefixIcon,
  });

  final TextEditingController controller;
  final String text;
  final validation;
  bool isLastInput, isPassword, enable;

  final TextInputType keyboardType;
  void Function()? onTap;
  void Function(String?)? onSaved;
  final Widget? prefixIcon;

  @override
  State<TextFormWidget> createState() => _TextFormWidgetState();
}

class _TextFormWidgetState extends State<TextFormWidget> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      validator: widget.validation,
      obscureText: widget.isPassword && isHidden,
      textAlign: TextAlign.start,
      onTap: widget.onTap,
      enabled: widget.enable,
      onSaved: widget.onSaved,
      cursorColor: lightIconsColor,
      textInputAction:
          widget.isLastInput ? TextInputAction.done : TextInputAction.next,
      decoration: InputDecoration(
        hintText: widget.text,
        hintStyle: TextStyle(
          // color:Colors.pink[200],
          fontSize: 14.sp,
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.w)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: lightIconsColor, width: 1.w)),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: lightIconsColor, width: 1.w)),
        prefixIconColor: lightIconsColor,
        filled: true,
        fillColor: Colors.white,
        prefixIcon: widget.prefixIcon,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.sp),
        ),
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  isHidden = !isHidden;
                  setState(() {});
                },
                child: Icon(isHidden ? Icons.visibility_off : Icons.visibility),
              )
            : null,
      ),
    );
  }
}
