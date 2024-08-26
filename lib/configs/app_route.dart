// import 'package:flutter/material.dart';
//
// class AppRoutes {
//   static Route onGenerateRoutes(RouteSettings settings) {
//     switch (settings.name) {
//
//       //type 1
//       case WelcomeScreen.routeName:
//         return _createRoute(const WelcomeScreen());
//
//         //type 2
//       case EditMultiSelectSwitchingScheduleScreen.routeName:
//         List args = settings.arguments as List;
//         return _createRoute(EditMultiSelectSwitchingScheduleScreen(
//           scheduleId: args[0],
//           instructionIds: args[1],
//         ));
//     }
//   }
//
//   static Route<dynamic> _createRoute(Widget view) {
//     return PageRouteBuilder(
//         pageBuilder: (context, animation, secondaryAnimation) => view,
//         transitionsBuilder: (context, animation, secondaryAnimation, child) {
//           const begin = Offset(1.0, 0.0);
//           const end = Offset.zero;
//           const curve = Curves.ease;
//           var tween =
//               Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//           return SlideTransition(
//               position: animation.drive(tween), child: child);
//         });
//   }
// }
