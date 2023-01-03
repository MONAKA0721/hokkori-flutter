import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hokkori/pages/post/model.dart';
import 'package:hokkori/utils/user.dart';

final userProvider =
    StateProvider<User>((ref) => const User('', '', '', '', ''));
final isLoggedInProvider = StateProvider<bool>((ref) => false);
final isBusyProvider = StateProvider<bool>((ref) => true);
final accessTokenProvider = StateProvider<String>((ref) => "");
final titleProvider = StateProvider<String>((ref) => "");
final workProvider = StateProvider<WorkModel?>((ref) => null);
final thumbnailProvider = StateProvider<File?>((ref) => null);

final tutorialNameProvider = StateProvider<String>((ref) => "");
final tutorialNameErrorProvider = StateProvider<bool>((ref) => false);
final tutorialUsernameProvider = StateProvider<String>((ref) => "");
final tutorialUsernameErrorProvider = StateProvider<bool>((ref) => false);
final tutorialAgeIDProvider = StateProvider<int?>(((ref) => null));
final tutorialAgeIDErrorProvider = StateProvider<bool>(((ref) => false));
final tutorialGenderProvider = StateProvider<int?>((ref) => 1);
final tutorialInterestsProvider =
    StateProvider<List<int>>((ref) => List.empty());
