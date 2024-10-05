// import 'dart:async';
//
// import 'package:equatable/equatable.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:one_click/repository/one_click_repository.dart';
//
// part 'auth_event.dart';
//
// part 'auth_state.dart';
//
// class AuthBloc extends Bloc<AuthEvent, AuthState> {
//   AuthBloc({
//     required OneClickRepository appRepository,
//   })  : _appRepository = appRepository,
//         super(UnAuthenticated()) {
//     on<AuthChangeStateRequested>(_onAuthChangeStateRequested);
//     on<LogoutAuthRequested>(_onLogoutAuthRequested);
//   }
//
//   final OneClickRepository _appRepository;
//
//   FutureOr<void> _onAuthChangeStateRequested(
//     AuthChangeStateRequested event,
//     Emitter<AuthState> emit,
//   ) {
//     emit(event.authState);
//   }
//
//   FutureOr<void> _onLogoutAuthRequested(
//     LogoutAuthRequested event,
//     Emitter<AuthState> emit,
//   ) async {
//     emit(UnAuthenticated());
//   }
// }
