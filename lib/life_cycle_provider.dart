import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appLifecycleProvider = Provider<AppLifecycleState>((ref) {
  final observer = _AppLifecycleObserver((value) => ref.state = value);

  final binding = WidgetsBinding.instance..addObserver(observer);
  ref.onDispose(() => binding.removeObserver(observer));

  return AppLifecycleState.resumed;
});

class _AppLifecycleObserver extends WidgetsBindingObserver {
  _AppLifecycleObserver(this._didChangeState);

  final ValueChanged<AppLifecycleState> _didChangeState;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _didChangeState(state);

    if (state == AppLifecycleState.paused) {
      //
      debugPrint('pause');
    } else if (state == AppLifecycleState.inactive) {
      //
      debugPrint('inactive');
    } else if (state == AppLifecycleState.resumed) {
      //
      debugPrint('resume');
    } else if (state == AppLifecycleState.detached) {
      //
      debugPrint('detecte');
    }

    super.didChangeAppLifecycleState(state);
  }
}
