import 'package:auto_route/annotations.dart';
import 'package:firebase_ddd_note_app/presentation/notes/note_form/note_form_page.dart';
import 'package:firebase_ddd_note_app/presentation/notes/notes_overview/notes_overview_page.dart';
import 'package:firebase_ddd_note_app/presentation/sign_in/sign_in_page.dart';
import 'package:firebase_ddd_note_app/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: NoteOverViewPage),
    AutoRoute(page: NoteFormPage, fullscreenDialog: true),
  ],
)
class $AppRouter {}