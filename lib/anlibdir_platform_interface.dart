import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'anlibdir_method_channel.dart';

abstract class AnlibdirPlatform extends PlatformInterface {
  /// Constructs a AnlibdirPlatform.
  AnlibdirPlatform() : super(token: _token);

  static final Object _token = Object();

  static AnlibdirPlatform _instance = MethodChannelAnlibdir();

  /// The default instance of [AnlibdirPlatform] to use.
  ///
  /// Defaults to [MethodChannelAnlibdir].
  static AnlibdirPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AnlibdirPlatform] when
  /// they register themselves.
  static set instance(AnlibdirPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getNativeLibraryDir() {
    throw UnimplementedError('getNativeLibraryDir() has not been implemented.');
  }
}
