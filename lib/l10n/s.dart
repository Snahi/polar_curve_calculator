import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class S {
  static late final AppLocalizations current;
  static bool _isInitialized = false;

  static void init(BuildContext context) {
    if (!_isInitialized) {
      _isInitialized = true;
      current = AppLocalizations.of(context)!;
    }
  }
}