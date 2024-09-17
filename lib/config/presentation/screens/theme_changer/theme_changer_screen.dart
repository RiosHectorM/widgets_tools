import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_tools/config/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(title: const Text('Theme Changer'), actions: [
        IconButton(
          icon: Icon(isDarkMode
              ? Icons.dark_mode_outlined
              : Icons.light_mode_outlined),
          onPressed: () {
            //ref.read(isDarkModeProvider.notifier).state  = !isDarkMode;
            ref.read(themeNotifierProvider.notifier).toggleIsDarkMode();
          },
        )
      ]),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final selectedColor = ref.watch(themeNotifierProvider).selectedColor;
    //final int selectedColor = ref.watch(themeNotifierProvider).selectedColor;

    return ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          final Color color = colors[index];
          return RadioListTile(
              title: Text('Este color', style: TextStyle(color: color)),
              subtitle: Text('${color.value}'),
              activeColor: color,
              value: index,
              groupValue: selectedColor,
              onChanged: (value) {
                //ref.read(selectedColorProvider.notifier).state = index;
                ref
                    .read(themeNotifierProvider.notifier)
                    .changeColorIndex(index);
              });
        });
  }
}
