// // **************************************************************************
// // AutoRouteGenerator
// // **************************************************************************
//
// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// // **************************************************************************
// // AutoRouteGenerator
// // **************************************************************************
// //
// // ignore_for_file: type=lint
//
// part of 'app_router.dart';
//
// class _$AppRouter extends RootStackRouter {
//   _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);
//
//   @override
//   final Map<String, PageFactory> pagesMap = {
//     LoginRoute.name: (routeData) {
//       return MaterialPageX<dynamic>(
//         routeData: routeData,
//         child: const LoginScreen(),
//       );
//     },
//     BnbRoute.name: (routeData) {
//       return MaterialPageX<dynamic>(
//         routeData: routeData,
//         child: const BnbScreen(),
//       );
//     },
//   };
//
//   @override
//   List<RouteConfig> get routes => [
//         RouteConfig(
//           LoginRoute.name,
//           path: '/login',
//           children: [
//             RouteConfig(
//               BnbRoute.name,
//               path: '',
//               parent: LoginRoute.name,
//             )
//           ],
//         )
//       ];
// }
//
// /// generated route for
// /// [LoginScreen]
// class LoginRoute extends PageRouteInfo<void> {
//   const LoginRoute({List<PageRouteInfo>? children})
//       : super(
//           LoginRoute.name,
//           path: '/login',
//           initialChildren: children,
//         );
//
//   static const String name = 'LoginRoute';
// }
//
// /// generated route for
// /// [BnbScreen]
// class BnbRoute extends PageRouteInfo<void> {
//   const BnbRoute()
//       : super(
//           BnbRoute.name,
//           path: '',
//         );
//
//   static const String name = 'BnbRoute';
// }
