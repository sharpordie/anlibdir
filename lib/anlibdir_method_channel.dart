import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'anlibdir_platform_interface.dart';

/// An implementation of [AnlibdirPlatform] that uses method channels.
class MethodChannelAnlibdir extends AnlibdirPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('anlibdir');

  @override
  Future<String?> getNativeLibraryDir() async {
    return await methodChannel.invokeMethod<String>('getNativeLibraryDir');
  }
}
