import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lion_project_004/services/dice_services.dart';

class DiceOneNotifier extends StateNotifier<int> {
  DiceOneNotifier() : super(5);

  void throwDice() {
    final dice = DiceServices.throwDice1();
    log('DiceOneNotifier.dice: $dice');
    state = dice;
    log('DiceOneNotifier.state: $state');
  }
}

final diceOneProvider = StateNotifierProvider<DiceOneNotifier, int>(
  (ref) => DiceOneNotifier(),
);

class DiceTwoNotifier extends StateNotifier<int> {
  DiceTwoNotifier() : super(2);

  void throwDice() {
    final dice = DiceServices.throwDice1();
    log('DiceTwoNotifier.dice: $dice');
    state = dice;
    log('DiceTwoNotifier.state: $state');
  }
}

final diceTwoProvider = StateNotifierProvider<DiceTwoNotifier, int>(
  (ref) {
    return DiceTwoNotifier();
  },
);
