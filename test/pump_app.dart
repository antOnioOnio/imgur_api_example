import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

extension PumpApp on WidgetTester {
  Future<BuildContext> pumpApp(
    Widget child, [
    List<dynamic>? providers,
  ]) async {
    late BuildContext myContext;

    await pumpWidget(
      MultiBlocProvider(
        providers: [
          ...providers ?? [],
        ],
        child: MaterialApp(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: Builder(builder: (context) {
            myContext = context;

            return child;
          }),
        ),
      ),
    );

    return myContext;
  }
}
