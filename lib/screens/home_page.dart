import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learing_riverpod/Provider/counter_provider.dart';

// making instance of the provider
final counterProvider =
    ChangeNotifierProvider<CounterProvider>((ref) => CounterProvider());

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countNum = ref.watch(counterProvider).count;

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                ref.read(counterProvider).increment();
              },
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                ref.read(counterProvider).decrement();
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          '${countNum}',
          style: TextStyle(
            fontSize: 52.0,
          ),
        ),
      ),
    );
  }
}
