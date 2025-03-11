import 'package:flutter/material.dart';
import 'package:web_portfolio/common/extension.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).appBarTheme.backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: Row(
        children: [
          AppLogo(),
          Spacer(),
          AppMenus(),
          Spacer(),
          LanguageToggle(),
          ThemeToggle(),
        ],
      ),
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Portfolio', style: context.textStyle.titleLgBold);
  }
}

class AppMenus extends StatelessWidget {
  const AppMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(context.texts.home),
        Text(context.texts.skill),
        Text(context.texts.project),
        Text(context.texts.certificate),
        Text(context.texts.about),
      ],
    );
  }
}

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem(child: Text('English')),
          PopupMenuItem(child: Text('Hindi')),
          PopupMenuItem(child: Text('Spanish')),
        ];
      },
    );
  }
}

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(value: false, onChanged: (value) {});
  }
}
