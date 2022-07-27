import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_ddd_note_app/domain/auth/auth_failure.dart';
import 'package:firebase_ddd_note_app/domain/auth/i_auth_facade.dart';
import 'package:firebase_ddd_note_app/domain/auth/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'sign_in_form_event.dart';

part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacde;

  SignInFormBloc(this._authFacde) : super(SignInFormState.initial()) {
    on<EmailChange>((event, emit) => _onEmailChange(event, emit));
    on<PasswordChange>((event, emit) => _onPasswordChange(event, emit));
    on<RegisterWithEmailAndPassword>((event, emit) => _onRegisterWithEmailAndPassword(event, emit));
    on<SignInWithEmailAndPassword>((event, emit) => _onSignInWithEmailAndPassword(event, emit));
    on<SignInWithGoogle>((event, emit) => _onSignInWithGoogle(event, emit));
  }

  void _onEmailChange(EmailChange event, Emitter<SignInFormState> emit) {
    emit(state.copyWith(
      emailAddress: EmailAddress(event.emailStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  void _onPasswordChange(PasswordChange event, Emitter<SignInFormState> emit) {
    emit(state.copyWith(
      password: Password(event.passStr),
      authFailureOrSuccessOption: none(),
    ));
  }

  void _onRegisterWithEmailAndPassword(RegisterWithEmailAndPassword event,
      Emitter<SignInFormState> emit) {
    _performActionWithIAuthFacade(_authFacde.registerWithPasswordAndEmail, emit);
  }

  void _onSignInWithEmailAndPassword(SignInWithEmailAndPassword event,
      Emitter<SignInFormState> emit) {
    _performActionWithIAuthFacade(_authFacde.signInWithPasswordAndEmail, emit);
  }

  void _onSignInWithGoogle(SignInWithGoogle event,
      Emitter<SignInFormState> emit) async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));
    final failureOrSuccess = await _authFacde.signInWithGoogle();
    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessage: true,
      authFailureOrSuccessOption: some(failureOrSuccess),
    ));
  }

  void _performActionWithIAuthFacade(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    }) forwardedCall, Emitter<SignInFormState> emit) async {
    Either<AuthFailure, Unit>? failureOrSuccess;
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if(isEmailValid && isPasswordValid){
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none()
      ));
      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password
      );
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessage: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
