import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:anlibdir/anlibdir_method_channel.dart';

void main() {
  MethodChannelAnlibdir platform = MethodChannelAnlibdir();
  const MethodChannel channel = MethodChannel('anlibdir');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getNativeLibraryDir(), '42');
  });
}
