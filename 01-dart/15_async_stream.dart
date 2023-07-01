void main() {
  emitNumbers().listen((int event) {
    print('Stream: $event');
  });
}

Stream<int> emitNumbers() async* {
  // async* cuanod devuelve un Stream
  final valuesToEmit = [1, 3, 7, 4, 2];

  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
