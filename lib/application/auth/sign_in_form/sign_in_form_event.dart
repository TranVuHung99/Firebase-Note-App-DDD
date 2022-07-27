part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChange;
  const factory SignInFormEvent.passwordChanged(String passStr) = PasswordChange;
  const factory SignInFormEvent.registerWithEmailAndPassword() = RegisterWithEmailAndPassword;
  const factory SignInFormEvent.signInWithEmailAndPassword() = SignInWithEmailAndPassword;
  const factory SignInFormEvent.signInWithGoogle() = SignInWithGoogle;

}
