import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ddd_note_app/injection.dart';
import 'package:firebase_ddd_note_app/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  runApp(AppWidget());
}


