import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchProvider =
    NotifierProvider.autoDispose<SearchNotifier, String>(SearchNotifier.new);

class SearchNotifier extends AutoDisposeNotifier<String> {
  @override
  String build() => '';

  @override
  set state(String value) {
    // TODO: implement state
    super.state = value;
  }
}
