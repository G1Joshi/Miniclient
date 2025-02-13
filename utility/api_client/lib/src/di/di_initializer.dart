import 'dart:async';

import 'package:api_client/src/di/di_initializer.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tide_di/tide_di.dart';

class ApiClientDIInitializer extends TideDIInitializer {
  const ApiClientDIInitializer() : super(_init);
}

@injectableInit
FutureOr<GetIt> _init(GetIt getIt, String? environment) =>
    getIt.init(environment: environment);

@Named('baseUrl')
@injectable
String baseUrl(@factoryParam String baseUrl) => baseUrl;
