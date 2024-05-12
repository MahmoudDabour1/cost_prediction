// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:rounded_loading_button/rounded_loading_button.dart';
//
// class ButtonWidget extends StatelessWidget {
//   ButtonWidget(
//       {super.key,
//       required this.text,
//       required this.function,
//       required this.btnController});
//
//   final String text;
//   void Function()? function;
//   RoundedLoadingButtonController btnController =
//       RoundedLoadingButtonController();
//
//   @override
//   Widget build(BuildContext context) {
//     return RoundedLoadingButton(
//       borderRadius: 16.r,
//       color: Colors.black,
//       height: 52.h,
//       width: 311.w,
//       completionDuration: const Duration(milliseconds: 400),
//       duration: const Duration(milliseconds: 400),
//       failedIcon: Icons.dangerous,
//       successIcon: Icons.done,
//       errorColor: Colors.red,
//       successColor: Colors.green,
//       controller: btnController,
//       onPressed: function,
//       child: Text(
//         text,
//         style: TextStyle(
//           fontSize: 16.sp,
//           color: const Color(0xffFFFFFF),
//         ),
//       ),
//     );
//   }
//
//   Widget buildSmallButton(bool isDone) {
//     return isDone
//         ? Icon(
//             Icons.done,
//             size: 52.r,
//             color: Colors.white,
//           )
//         : Container(
//             decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: isDone ? Colors.green : const Color(0xff247CFF)),
//             child: const Center(child: CircularProgressIndicator()),
//           );
//   }
// }
//
// enum ButtonState { init, loading, done }
