// import 'dart:async';
//
// import 'package:equatable/equatable.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:one_click/constants/ui/enums.dart';
// import 'package:one_click/models/entity/user_entity.dart';
// import 'package:one_click/repository/one_click_repository.dart';
// import 'package:one_click/utils/bloc_utils.dart';
//
// part 'user_event.dart';
//
// part 'user_state.dart';
//
// class UserBloc extends Bloc<UserEvent, UserState> {
//   UserBloc({
//     required OneClickRepository appRepository,
//   })  : _appRepository = appRepository,
//         super(const UserState()) {
//     on<LoadUser>(_onLoadUser);
//   }
//
//   final OneClickRepository _appRepository;
//
//   FutureOr<void> _onLoadUser(
//     LoadUser event,
//     Emitter<UserState> emit,
//   ) async {
//     print('......................on load user');
//     emit(state.copyWith(status: Status.inProgress, message: ''));
//
//     final apiResult = await _appRepository.getUser(
//       token: event.token,
//     );
//     print('.............🙌😁👍🤦‍♀️🐱‍🏍'+apiResult.toString());
//     apiResult.when(
//       success: (response) {
//         emit(
//           state.copyWith(
//             status: Status.success,
//             userEntity: response,
//           ),
//         );
//       },
//       failure: (error) => BlocUtils.handleFailure(error, emit, state),
//     );
//   }
// }
