import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/user.dart';

final userProvider = StateNotifierProvider<UserNotifier, User>(
  (ref) => UserNotifier(
    User(name: '', age: 0),
  ),
);

class UserNotifier extends StateNotifier<User> {
  UserNotifier(super.state);

  void updateName(String n) {
    state = state.copyWith(
      name: n,
    );
  }
}
