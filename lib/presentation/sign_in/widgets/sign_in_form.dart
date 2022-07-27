import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_note_app/application/auth/auth_bloc.dart';
import 'package:firebase_ddd_note_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:firebase_ddd_note_app/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        final signInFormBloc = context.read<SignInFormBloc>();
        return Form(
          autovalidateMode: state.showErrorMessage ? AutovalidateMode.always : AutovalidateMode.disabled,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              const Text(
                '📝',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 130,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) => signInFormBloc.add(EmailChange(value)),
                validator: (_) => signInFormBloc.state.emailAddress.value.fold(
                  (f) => f.maybeMap(
                    invalidEmail: (_) => 'Invalid Email',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => signInFormBloc.add(PasswordChange(value)),
                validator: (_) => signInFormBloc.state.password.value.fold(
                  (f) => f.maybeMap(
                    shortPassword: (_) => 'Short Password',
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        signInFormBloc.add(const SignInWithEmailAndPassword());
                      },
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        signInFormBloc.add(const RegisterWithEmailAndPassword());
                      },
                      child: const Text(
                        'REGISTER',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  signInFormBloc.add(const SignInWithGoogle());
                },
                style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
                child: const Text(
                  'SIGN IN WITH GOOGLE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (state.isSubmitting) ...[
                const SizedBox(
                  height: 8,
                ),
                const LinearProgressIndicator(),
              ]
            ],
          ),
        );
      },
      listener: (context, state) {
        final authBloc = context.read<AuthBloc>();
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server Error',
                  emailAlreadyInUse: (_) => 'Email Already In Use',
                  invalidEmailAndPasswordCombination: (_) => 'Invalid email and password combination',
                ),
              ).show(context);
            },
            (_) {
              context.router.replace(const NoteOverViewRoute());
              authBloc.add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
    );
  }
}
