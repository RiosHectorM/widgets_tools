import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  List<int> imagesIds = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: imagesIds.length,
        itemBuilder: (context, index) {
        return FadeInImage(
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
            placeholder: const AssetImage('assets/images/jar-loading.gif'),
            image: NetworkImage('https://picsum.photos/id/${imagesIds[index]}/500/300'));
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>context.pop()
      ),
    );
  }
}
