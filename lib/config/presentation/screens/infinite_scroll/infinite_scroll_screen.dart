import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatelessWidget {
  const InfiniteScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return FadeInImage(
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
            placeholder: const AssetImage('assets/images/jar-loading.gif'),
            image: NetworkImage('https://picsum.photos/id/1/500/300'));
      }),
    );
  }
}
