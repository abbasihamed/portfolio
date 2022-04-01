import 'package:flutter_riverpod/flutter_riverpod.dart';

class OpacityAnimController extends StateNotifier {
  OpacityAnimController() : super([]);

  bool isAnim = false;

  animToggel() async {
    Future.delayed(const Duration(milliseconds: 100), () {
      isAnim = true;
      state = isAnim;
    });
  }
}

final opacityAnimProvider = StateNotifierProvider((state) {
  return OpacityAnimController();
});
