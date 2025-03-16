import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:web_portfolio/screen/Home/home_page.dart';
import 'package:web_portfolio/style/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      darkTheme: AppThemes.dark,

      themeMode: ThemeMode.dark,

      supportedLocales: const [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],
      locale: Locale('en'),
      home: const HomePage(),
    );
  }
}
