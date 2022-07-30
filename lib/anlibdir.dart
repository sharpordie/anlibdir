
import 'anlibdir_platform_interface.dart';

class Anlibdir {
  Future<String?> getNativeLibraryDir() {
    return AnlibdirPlatform.instance.getNativeLibraryDir();
  }
}
