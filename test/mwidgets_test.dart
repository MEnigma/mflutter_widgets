import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mwidgets/mwidgets.dart';

void main() {
  const MethodChannel channel = MethodChannel('mwidgets');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Mwidgets.platformVersion, '42');
  });
}
