import 'package:connectivity_plus/connectivity_plus.dart';

mixin ConnectionChecker {
  final Connectivity _connectivity = Connectivity();

  Future<bool> internetChecker() async {
    List<ConnectivityResult> result = await _connectivity.checkConnectivity();

    if (result.contains(ConnectivityResult.wifi)) {
      return true;
    }

    if (result.contains(ConnectivityResult.mobile)) {
      return true;
    }

    if (result.contains(ConnectivityResult.ethernet)) {
      return true;
    }

    return false;
  }
}
