import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveasy_assignment/app_localization.dart';
import 'package:liveasy_assignment/bloc/cubit/locale_cubit.dart';
import 'package:liveasy_assignment/core/routes.dart';
import 'package:liveasy_assignment/pages/select_language/select_language.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
      enabled: !kReleaseMode,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: () => MultiBlocProvider(
        providers: [BlocProvider(create: (context) => LocaleCubit())],
        child: BlocBuilder<LocaleCubit, LocaleState>(
          builder: (context, localeState) {
            return MaterialApp(
              title: 'Flutter Demo',

              builder: DevicePreview.appBuilder,
              theme: ThemeData(primarySwatch: Colors.blue),

              routes: approute,

              locale: localeState.locale,
              initialRoute: SelectLanguagePage.id,
              //list of all supported locales

              supportedLocales: const [
                Locale('en', 'US'),
                Locale('hi', 'IN'),
              ],
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],

              localeResolutionCallback: (locale, supportedLocales) {
                print(locale);
                for (var supportedLocale in supportedLocales) {
                  if (supportedLocale.languageCode == locale?.languageCode) {
                    return supportedLocale;
                  }

                  supportedLocale;
                }
              },

              home: const SelectLanguagePage(),
            );
          },
        ),
      ),
    );
  }
}
