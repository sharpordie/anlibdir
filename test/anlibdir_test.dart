import 'package:flutter_test/flutter_test.dart';
import 'package:anlibdir/anlibdir.dart';
import 'package:anlibdir/anlibdir_platform_interface.dart';
import 'package:anlibdir/anlibdir_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAnlibdirPlatform 
    with MockPlatformInterfaceMixin
    implements AnlibdirPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AnlibdirPlatform initialPlatform = AnlibdirPlatform.instance;

  test('$MethodChannelAnlibdir is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAnlibdir>());
  });

  test('getPlatformVersion', () async {
    Anlibdir anlibdirPlugin = Anlibdir();
    MockAnlibdirPlatform fakePlatform = MockAnlibdirPlatform();
    AnlibdirPlatform.instance = fakePlatform;
  
    expect(await anlibdirPlugin.getNativeLibraryDir(), '42');
  });
}
