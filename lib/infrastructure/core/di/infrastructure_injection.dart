import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'infrastructure_injection.config.dart';

final GetIt injector = GetIt.instance;

@injectableInit
Future<void> configureDependencies(String env) async {
  injector.init(environment: env);
}
