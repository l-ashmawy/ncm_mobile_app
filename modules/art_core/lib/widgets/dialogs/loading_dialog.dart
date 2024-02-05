import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../loading/loading_widget.dart';

showLoadingDialog() {
  showDialog(
      barrierDismissible: false,
      context: Modular.routerDelegate.navigatorKey.currentContext!,
      builder: (BuildContext context) {
        return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: const Center(
              child: AppLoading(),
            ));
      });
}
