import 'package:flutter/material.dart';
import 'package:web_portfolio/common/app_text_style.dart';
import 'package:web_portfolio/common/extension.dart';
import 'package:web_portfolio/constant/app_menu_list.dart';
import 'package:web_portfolio/style/app_size.dart';
import 'package:web_portfolio/widget/appBar/app_bar_drawer_icon.dart';
import 'package:web_portfolio/widget/language_switch.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      alignment: Alignment.center,
      color: context.theme.appBarTheme.backgroundColor,
      height: context.insets.appBarHeight,
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: Insets.maxWidth),
        child: Row(
          children: [
            AppLogo(),
            Spacer(),
            if (context.isDesktop) LargeMenu(),
            Spacer(),
            LanguageSwitch(),
            ThemeToggle(),
            if (!context.isDesktop) AppBarDrawerIcon(),
          ],
        ),
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

class LargeMenu extends StatelessWidget {
  const LargeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          AppMenuList.getItems(context)
              .map(
                (e) => LargeAppBarMenuItem(
                  title: e.title,
                  isSelected: true,
                  onTap: () {},
                ),
              )
              .toList(),
    );
  }
}

class LargeAppBarMenuItem extends StatelessWidget {
  const LargeAppBarMenuItem({
    super.key,
    required this.title,
    required this.onTap,
    required this.isSelected,
  });
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Insets.med,
          vertical: Insets.xs,
        ),
        child: Text(title, style: SmallTextStyles().bodyLgMedium),
      ),
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
