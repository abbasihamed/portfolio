import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherController extends StateNotifier {
  UrlLauncherController() : super([]);

  void launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';

    state = [...state];
  }
}

final launchProvider = StateNotifierProvider((state) {
  return UrlLauncherController();
});
