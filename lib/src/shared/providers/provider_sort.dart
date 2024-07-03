import 'package:hooks_riverpod/hooks_riverpod.dart';

enum SortType { none, asc, desc }

final sortProvider = AutoDisposeNotifierProvider<SortNotifier, SortType>(SortNotifier.new);

class SortNotifier extends AutoDisposeNotifier<SortType> {
  @override
  build() => SortType.none;

  @override
  set state(SortType value) {
    // TODO: implement state
    super.state = value;
  }

  void set(SortType value) => state = value;
}
