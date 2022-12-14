import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_note_app/application/auth/auth_bloc.dart';
import 'package:firebase_ddd_note_app/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) => context.router.replace(const NoteOverViewRoute()),
          unauthenticated: (_) => context.router.replace(const SignInRoute()),
        );
      },
      child: const Scaffold(
        body: Center(child:CircularProgressIndicator() ,),
      ),
    );
  }
}
