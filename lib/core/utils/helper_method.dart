import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


final navigatorKey = GlobalKey<NavigatorState>();

//  navigatorTo({required BuildContext context, required Widget page, bool withHistory = false}) {
//   Navigator.push(
//     context,
//
//     MaterialPageRoute(
//       builder: (context) => page,
//     ),
//   );
// }



// navigatorTo(
//     {required BuildContext context,
//     required Widget page,
//     bool withHistory = true, PageTransitionType pageTransitionType = PageTransitionType.fade}) {
//   Navigator.pushAndRemoveUntil(
//       context,
//       PageTransition(
//           child: page,
//           type: pageTransitionType,
//           duration: const Duration(milliseconds: 400)),
//       (route) => withHistory);
// }


showMessage({required String msg,required Color color}) {
  ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
    SnackBar(

      backgroundColor: color,
      elevation: 0,
      content: Row(
        children: [
           Icon(
            Icons.message_outlined,
            color: Colors.white,
            size: 25.r,
          ),
          SizedBox(
            width: 5.w,
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                msg,
                style:  TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
