import 'dart:async';

Future fetchProfile() async {
  await Future.delayed(const Duration(seconds: 2));
  return {'name': 'Vlad', 'status': 'Online'};
}

Stream profileStream() async* {
  yield 'Connection';
  await Future.delayed(const Duration(milliseconds: 600));
  
  yield 'Loading';
  await Future.delayed(const Duration(milliseconds: 600));
  
  yield 'ok';
}

void main() async {
  try {
    print('Future:');
    var data = await fetchProfile();
    print('$data\n');
  } catch (e) {
    print('$e');
  }

  try {
    print('Stream:');
    await for (var status in profileStream()) {
      print(status);
    }
  } catch (e) {
    print('$e');
  }
}