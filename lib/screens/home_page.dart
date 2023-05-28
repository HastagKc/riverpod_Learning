import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learing_riverpod/Providers/nameProvider.dart';

class HomePage extends ConsumerWidget {
  // const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
    );
  }
}
