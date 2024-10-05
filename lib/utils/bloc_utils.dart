// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:one_click/constants/ui/enums.dart';
// import 'package:one_click/utils/data/network_exceptions.dart';
//
// class BlocUtils {
//   const BlocUtils._();
//
//   static void handleFailure(
//       NetworkExceptions error,
//       Emitter<dynamic> emit,
//       dynamic state,
//       ) {
//     final message = NetworkExceptions.getErrorMessage(error);
//     emit(
//       state.copyWith(
//         status: Status.failure,
//         message: message,
//       ),
//     );
//   }
// }
