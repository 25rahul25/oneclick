// import 'dart:async';
//
// import 'package:equatable/equatable.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:one_click/blocs/auth_bloc/auth_bloc.dart';
// import 'package:one_click/blocs/user_bloc/user_bloc.dart';
// import 'package:one_click/constants/ui/enums.dart';
// import 'package:one_click/repository/one_click_repository.dart';
// import 'package:one_click/utils/bloc_utils.dart';
//
// part 'login_event.dart';
//
// part 'login_state.dart';
//
// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   LoginBloc({
//     required OneClickRepository appRepository,
//     required AuthBloc authBloc,
//     required UserBloc userBloc,
//   })  : _appRepository = appRepository,
//         _authBloc = authBloc,
//         _userBloc = userBloc,
//         super(const LoginState()) {
//     on<LoginRequested>(_onLoginRequested);
//   }
//
//   final OneClickRepository _appRepository;
//   final AuthBloc _authBloc;
//   final UserBloc _userBloc;
//
//   FutureOr<void> _onLoginRequested(
//     LoginRequested event,
//     Emitter<LoginState> emit,
//   ) async {
//     emit(state.copyWith(status: Status.inProgress, message: ''));
//
//     final apiResult = await _appRepository.login(
//       email: event.email,
//       password: event.password,
//     );
//     apiResult.when(
//       success: (response) {
//         emit(
//           state.copyWith(
//             status: Status.success,
//           ),
//         );
//         _authBloc.add(AuthChangeStateRequested(authState: Authenticated()));
//         _userBloc.add(LoadUser(token: response.data));
//       },
//       failure: (error) => BlocUtils.handleFailure(error, emit, state),
//     );
//   }
// }
