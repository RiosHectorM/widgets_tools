import 'package:flutter/material.dart';
import 'package:widgets_tools/config/presentation/providers/theme_provider.dart';
import 'package:widgets_tools/config/router/app_router.dart';
import 'package:widgets_tools/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final bool isDarkMode = ref.watch(isDarkModeProvider);
    // final int selectedColor = ref.watch(selectedColorProvider);
    final AppTheme appTheme = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme()
    );
  }
}
