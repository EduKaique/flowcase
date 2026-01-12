sealed class Result<T> {
  const Result();

  factory Result.ok(T value) => Ok(value);

  factory Result.error(Object error) => Error(error);
}

class Ok<T> extends Result<T> {
  final T value;
  const Ok(this.value);
}

class Error<T> extends Result<T> {
  final Object error;
  const Error(this.error);
}