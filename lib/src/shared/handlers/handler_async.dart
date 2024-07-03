/// The result of a request to the API.
/// It can be in three states: loading, success, or error.
sealed class Result<T> {
  const Result();
}

/// OnLoading state.
class OnLoading<T> extends Result<T> {
  const OnLoading();
}

/// OnSuccess state.
class OnSuccess<T> extends Result<T> {
  final T value;
  const OnSuccess(this.value);
}

/// OnError state.
class OnError<T> extends Result<T> {
  final Exception exception;
  const OnError(this.exception);
}
