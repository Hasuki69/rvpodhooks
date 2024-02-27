/// The result of a request to the API.
///
/// The result can be in one of three states:
///
/// 1. [OnLoading] - the request is still loading.
///
/// 2. [OnSuccess] - the request has completed successfully.
///
/// 3. [OnError] - the request has completed with an error.
///
sealed class Result<L, S, E extends Exception> {
  const Result();
}

/// OnLoading state.
///
/// This state is used to indicate that the request is still loading.
///
final class OnLoading<L, S, E extends Exception> extends Result<L, S, E> {
  const OnLoading();
}

/// OnSuccess state.
///
/// This state is used to indicate that the request has completed successfully.
///
/// The [value] property contains the value that was returned by the request.
final class OnSuccess<L, S, E extends Exception> extends Result<L, S, E> {
  final S value;
  const OnSuccess(this.value);
}

/// OnError state.
///
/// This state is used to indicate that the request has completed with an error.
///
/// The [exception] property contains the exception that caused the error.
final class OnError<L, S, E extends Exception> extends Result<L, S, E> {
  final E exception;
  const OnError(this.exception);
}
