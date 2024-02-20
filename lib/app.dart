import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

import 'bindings/general_bindings.dart';
import 'routes/app_routes.dart';
import 'utils/constants/colors.dart';
import 'utils/constants/text_strings.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return KhaltiScope(
      publicKey: "test_public_key_d5d9f63743584dc38753056b0cc737d5",
      enabledDebugging: true,
      builder: (context, navigatorKey){

        return GetMaterialApp(
          navigatorKey: navigatorKey,
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('ne', 'NP'),
          ],
          localizationsDelegates: const [
            KhaltiLocalizations.delegate,

          ],

          title: TTexts.appName,
          themeMode: ThemeMode.system,
          theme: TAppTheme.lightTheme,
          darkTheme: TAppTheme.darkTheme,
          debugShowCheckedModeBanner: false,
          initialBinding: GeneralBindings(),
          getPages: AppRoutes.pages,

          /// Show Loader or Circular Progress Indicator meanwhile Authentication Repository is deciding to show relevant screen.
          home: const Scaffold(backgroundColor: TColors.primary, body: Center(child: CircularProgressIndicator(color: Colors.white))),
        );

      }

    );
  }
}
