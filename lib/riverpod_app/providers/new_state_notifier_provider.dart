import 'dart:developer';

import 'package:lion_project_004/services/dice_services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'new_state_notifier_provider.g.dart';

@riverpod
class NewDiceOneNotifier extends _$NewDiceOneNotifier {
  @override
  int build() {
    return 6;
  }

  void throwDice() {
    final dice = DiceServices.throwDice1();
    log('NewDiceOneNotifier.dice: $dice');
    state = dice;
    log('NewDiceOneNotifier.state: $state');
  }
}

@riverpod
class NewDiceTwoNotifier extends _$NewDiceTwoNotifier {
  @override
  int build() => 4;

  void throwDice() {
    final dice = DiceServices.throwDice1();
    log('NewDiceTwoNotifier.dice: $dice');
    state = dice;
    log('NewDiceTwoNotifier.state: $state');
  }
}
