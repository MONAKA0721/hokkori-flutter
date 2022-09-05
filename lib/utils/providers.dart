import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hokkori/utils/user.dart';

final userProvider = StateProvider<User>((ref) => const User('', ''));
final isLoggedInProvider = StateProvider<bool>((ref) => false);
final isBusyProvider = StateProvider<bool>((ref) => false);
final accessTokenProvider = StateProvider<String>((ref) => "");
final titleProvider = StateProvider<String>((ref) => "");
final workProvider = StateProvider<String>((ref) => "");
