/*
The Joker by Alexander Abraham.
Licensed under the MIT license.
*/

/// Imports the main widget.
import 'src/home.dart';
/// Imports the widget library.
import 'package:flutter/material.dart';
/// Imports generated localizations.
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
/// Imports localization services.
import 'package:flutter_localizations/flutter_localizations.dart';

/// Main entry point for the
/// Dart VM.
void main(){
  runApp(
    new MaterialApp(
      home: new Joker(),
      /// Tells Flutter to not display
      /// the [DEBUG] banner.
      debugShowCheckedModeBanner: false,
      /// Runs the Flutter app with
      /// localization services active.
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      /// Specifies which languages
      /// are supported in the app.
      supportedLocales: [
        Locale('de', ''),
        Locale('en', '')
    ],
    )
  );
}
