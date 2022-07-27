import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_ddd_note_app/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const Initial()) {
    on<AuthCheckRequested>((event, emit) => _onAuthCheckRequest(event, emit));
    on<SignOut>((event, emit) => _onSignOut(event, emit));
  }

  void _onAuthCheckRequest(
      AuthCheckRequested event, Emitter<AuthState> emit) async {
    final userOption = await _authFacade.getSignedUser();
    emit(userOption.fold(
      () => const AuthState.unauthenticated(),
      (_) => const AuthState.authenticated(),
    ));
  }

  void _onSignOut(SignOut event, Emitter<AuthState> emit) async {
    await _authFacade.signOut();
    emit(const AuthState.unauthenticated());
  }
}
