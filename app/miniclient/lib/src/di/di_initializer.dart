import 'package:api_client/api_client.dart';
import 'package:marvel_characters/marvel_characters.dart';
import 'package:tide_di/tide_di.dart';
import 'package:tide_monitoring/tide_monitoring.dart';

Future<void> initDi() => initializeDIContainer([
      ..._utilityDIInitializers(),
      ..._featureDIInitializers(),
    ]);

List<TideDIInitializer> _utilityDIInitializers() => const [
      MonitoringDIInitializer(),
      ApiClientDIInitializer(),
    ];

List<TideDIInitializer> _featureDIInitializers() => const [
      MarvelCharactersDIInitializer(),
    ];
