import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:formula_one/generated/l10n.dart';
import 'package:formula_one/presentation/common/common.dart';
import 'package:routemaster/routemaster.dart';


class FormulaOneApp extends StatelessWidget {
  const FormulaOneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Formula One',
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      routerDelegate: RoutemasterDelegate(
        routesBuilder: (_) => AppRouteMap(),
      ),
      routeInformationParser: const RoutemasterParser(),
    );
  }
}
