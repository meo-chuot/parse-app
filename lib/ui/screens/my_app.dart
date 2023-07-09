import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:app/business/bloc/app/app_bloc.dart';
import 'package:app/business/bloc/app/app_state.dart';
import 'package:app/business/bloc/error/error_bloc.dart';
import 'package:app/business/bloc/language/language_bloc.dart';
import 'package:app/business/bloc/theme/theme_bloc.dart';
import 'package:app/business/bloc/user/user_bloc.dart';
import 'package:app/env/app_theme.dart';
import 'package:app/env/env.dart';
import 'package:app/ui/routes/routes.dart';
import 'package:app/ui/screens/home/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(create: (_) => AppBloc()),
        BlocProvider<ErrorBloc>(create: (_) => ErrorBloc()),
        BlocProvider<ThemeBloc>(create: (_) => ThemeBloc()),
        BlocProvider<LanguageBloc>(create: (_) => LanguageBloc()),
        BlocProvider<UserBloc>(create: (_) => UserBloc()),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: Env.appName,
            theme: context.read<ThemeBloc>().darkMode
                ? AppThemeData.darkThemeData
                : AppThemeData.lightThemeData,
            routes: Routes.routes,
            locale: Locale(context.read<LanguageBloc>().locale),
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
