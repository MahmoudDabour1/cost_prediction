import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarIconsWidget extends StatelessWidget {
   AppBarIconsWidget(
      {super.key, required this.function, required this.icon});

  void Function()?  function;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.r),
      child: GestureDetector(
        onTap: function,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).cardColor,
          ),
          child: Padding(
            padding: EdgeInsets.all(6.r),
            child: Icon(icon),
          ),
        ),
      ),
    );
  }
}
