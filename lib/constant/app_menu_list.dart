import 'package:flutter/material.dart';
import 'package:web_portfolio/common/extension.dart';
import 'package:web_portfolio/route/app_route.dart';

class AppMenuList {
  static List<AppMenu> getItems(BuildContext context) {
    return [
      AppMenu(title:context.texts.home ,path: Routes.home),
      AppMenu(title: context.texts.skill,path: Routes.skilandexperience),
      AppMenu(title: context.texts.project,path: Routes.project),
      AppMenu(title: context.texts.certificate,path: Routes.education),
      AppMenu(title: context.texts.about,path: Routes.aboutme),
    ]
  }
}

class AppMenu {
  final String title;
  final String path;

  AppMenu({required this.title,required this.path});

}
