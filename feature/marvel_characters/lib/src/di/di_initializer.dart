import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_characters/src/di/di_initializer.config.dart';
import 'package:tide_di/tide_di.dart';

class MarvelCharactersDIInitializer extends TideDIInitializer {
  const MarvelCharactersDIInitializer() : super(_init);
}

@injectableInit
FutureOr<GetIt> _init(GetIt getIt, String? environment) =>
    getIt.init(environment: environment);
