import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:web_portfolio/common/extension.dart';
import 'package:web_portfolio/constant/app_icon.dart';
import 'package:web_portfolio/widget/seo_text.dart';

class LanguageSwitch extends StatelessWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            child: PopupLanguageSwitchItem(
              icon: AppIcon.us,
              language: 'English',
            ),
          ),
          // Add hindi Language Later
          PopupMenuItem(
            child: PopupLanguageSwitchItem(
              icon: AppIcon.ir,
              language: 'Spanish',
            ),
          ),
        ];
      },
      child: Row(
        children: [
          Icon(Icons.language, color: context.colorScheme.onSurface),
          Gap(4),
          SEOText(
            Localizations.localeOf(context).languageCode == 'en'
                ? 'En'
                : 'Es', // fetch the app language used
          ),
        ],
      ),
    );
  }
}

class PopupLanguageSwitchItem extends StatelessWidget {
  const PopupLanguageSwitchItem({
    super.key,
    required this.language,
    required this.icon,
  });

  final String language;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon, width: 18, height: 18),
        const Gap(8),
        SEOText(language),
      ],
    );
  }
}
