import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tide_di/tide_di.dart';
import 'package:tide_monitoring/src/di/di_initializer.config.dart';

class MonitoringDIInitializer extends TideDIInitializer {
  const MonitoringDIInitializer() : super(_init);
}

@injectableInit
FutureOr<GetIt> _init(GetIt getIt, String? environment) =>
    getIt.init(environment: environment);
