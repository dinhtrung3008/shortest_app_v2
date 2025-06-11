class ValueError<F> extends Error {
  final F failure;

  ValueError(this.failure);

  @override
  String toString() {
    return Error.safeToString('Failure was: $failure');
  }
}
