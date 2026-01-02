import 'package:flutter/material.dart';

class ChangeNotifierProvider<T extends ChangeNotifier>
    extends InheritedNotifier<T> {
  const ChangeNotifierProvider({
    super.key,
    required T super.notifier,
    required super.child,
  });

  static T of<T extends ChangeNotifier>(BuildContext context) {
    final provider = context
        .dependOnInheritedWidgetOfExactType<ChangeNotifierProvider<T>>();

    if (provider == null) {
      throw FlutterError('ChangeNotifierProvider<$T> not found in widget tree');
    }

    return provider.notifier!;
  }
}
