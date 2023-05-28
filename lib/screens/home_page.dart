import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:learing_riverpod/model/user.dart';

import '../Providers/userNotifier.dart';

class HomePage extends ConsumerWidget {
  TextEditingController textController = TextEditingController();

  onSubmit(String name, WidgetRef ref) {
    ref.read(userProvider.notifier).updateName(name);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(userProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: TextField(
        controller: textController,
        onSubmitted: (value) {
          textController.text = '';
        },
      ),
    );
  }
}
