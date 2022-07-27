// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../domain/notes/note.dart' as _i7;
import '../notes/note_form/note_form_page.dart' as _i4;
import '../notes/notes_overview/notes_overview_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    NoteOverViewRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.NoteOverViewPage());
    },
    NoteFormRoute.name: (routeData) {
      final args = routeData.argsAs<NoteFormRouteArgs>(
          orElse: () => const NoteFormRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.NoteFormPage(key: args.key, editedNoted: args.editedNoted),
          fullscreenDialog: true);
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashRoute.name, path: '/'),
        _i5.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i5.RouteConfig(NoteOverViewRoute.name, path: '/note-over-view-page'),
        _i5.RouteConfig(NoteFormRoute.name, path: '/note-form-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i5.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.NoteOverViewPage]
class NoteOverViewRoute extends _i5.PageRouteInfo<void> {
  const NoteOverViewRoute()
      : super(NoteOverViewRoute.name, path: '/note-over-view-page');

  static const String name = 'NoteOverViewRoute';
}

/// generated route for
/// [_i4.NoteFormPage]
class NoteFormRoute extends _i5.PageRouteInfo<NoteFormRouteArgs> {
  NoteFormRoute({_i6.Key? key, _i7.Note? editedNoted})
      : super(NoteFormRoute.name,
            path: '/note-form-page',
            args: NoteFormRouteArgs(key: key, editedNoted: editedNoted));

  static const String name = 'NoteFormRoute';
}

class NoteFormRouteArgs {
  const NoteFormRouteArgs({this.key, this.editedNoted});

  final _i6.Key? key;

  final _i7.Note? editedNoted;

  @override
  String toString() {
    return 'NoteFormRouteArgs{key: $key, editedNoted: $editedNoted}';
  }
}