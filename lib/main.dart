import 'package:flutter/material.dart';
import 'package:openattendance_simple_app/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'l10n/l10n.dart';

void main() async { 
  runApp(const MyApp());
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OpenAttendance',
      localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('es', ''), // Spanish, no country code
      ],
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.deepPurple,
        backgroundColor: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage()
    );
    }
}