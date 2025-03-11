# Portfolio

``` 
flutter pub get
```
** Add Difference Language in App
```
flutter pub add flutter_localizations --sdk=flutter
```
```
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
```
* Inside Material Widget in Main
 ```
 localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
 ```
* Add SupportedLocales
```
   supportedLocales: [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],
```
* Add intl
```
  flutter pub add intl:any
```

* Add yaml
```
flutter:
  generate: true # Add this line
```
*Create l10n folder inside lib
**Create arb file of all Language
```
app_en.arb
app_fa.arb

```

*Add a new yaml file to the root directory of the Flutter project. Name this file l10n.yaml

```
arb-dir: lib/l10n
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
```
* Use 
```
AppLocalizations.of(context)!.home # it's must be changeable eg home
```
