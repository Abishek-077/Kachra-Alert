import 'package:flutter/material.dart';

class ChangeNotifierProvider<T extends ChangeNotifier> extends StatefulWidget {
  final T Function(BuildContext) create;
  final Widget child;

  const ChangeNotifierProvider({
    Key? key,
    required this.create,
    required this.child,
  }) : super(key: key);

  @override
  State<ChangeNotifierProvider<T>> createState() =>
      _ChangeNotifierProviderState<T>();

  static T of<T extends ChangeNotifier>(BuildContext context) {
    final provider = context
        .dependOnInheritedWidgetOfExactType<_InheritedProvider<T>>();
    return provider!.notifier;
  }
}

class _ChangeNotifierProviderState<T extends ChangeNotifier>
    extends State<ChangeNotifierProvider<T>> {
  late T _notifier;

  @override
  void initState() {
    super.initState();
    _notifier = widget.create(context);
    _notifier.addListener(_listener);
  }

  @override
  void dispose() {
    _notifier.removeListener(_listener);
    _notifier.dispose();
    super.dispose();
  }

  void _listener() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedProvider<T>(notifier: _notifier, child: widget.child);
  }
}

class _InheritedProvider<T extends ChangeNotifier> extends InheritedWidget {
  final T notifier;

  const _InheritedProvider({required this.notifier, required Widget child})
    : super(child: child);

  @override
  bool updateShouldNotify(_InheritedProvider<T> oldWidget) {
    return notifier != oldWidget.notifier;
  }
}
