import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_tools/config/presentation/providers/counter_provider.dart';
import 'package:widgets_tools/config/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen',
            style: Theme.of(context).textTheme.titleLarge),
            actions: [IconButton(
              icon: Icon(isDarkMode ? Icons.dark_mode_outlined:Icons.light_mode_outlined),
              onPressed: (){
                ref.read(isDarkModeProvider.notifier).state = !isDarkMode;      
              }, 
            )],
      ),
      body: Center(
        child: Text('Valor: $clickCounter'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
      ),
    );
  }
}
