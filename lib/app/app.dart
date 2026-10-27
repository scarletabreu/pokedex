import 'package:flutter/material.dart';

import 'router/app_router.dart';
import 'theme/app_theme.dart';
import 'startup/startup_sync_gate.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StartupSyncGate(
      child: MaterialApp.router(
        title: 'Pokedex',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: ThemeMode.system,
        routerConfig: appRouter,
      ),
    );
  }
}
