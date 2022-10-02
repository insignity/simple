import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple/l10n/l10n.dart';

extension ContextShortcuts on BuildContext{
  AppLocalizations get $ => AppLocalizations.of(this);
}