import 'package:flutter_riverpod/flutter_riverpod.dart';

class HoverController extends StateNotifier {
  HoverController() : super([]);

  bool isHover = false;

  void hoverToggle(bool value) {
    isHover = value;
    state = isHover;
  }
}

final hoverProvider = StateNotifierProvider((state) {
  return HoverController();
});
