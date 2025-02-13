import 'package:api_client/src/api/marvel_api_auth_interceptor.dart';
import 'package:api_client/src/di/di_parameter_name.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  @Named(ApiClientDiParameterName.privateApiKey)
  String get privateApiKey =>
      const String.fromEnvironment('MARVEL_PRIVATE_API_KEY');

  @Named(ApiClientDiParameterName.publicApiKey)
  String get publicApiKey =>
      const String.fromEnvironment('MARVEL_PUBLIC_API_KEY');

  @lazySingleton
  Dio dio(
    MarvelApiAuthInterceptor marvelApiAuthInterceptor,
  ) =>
      Dio(BaseOptions(baseUrl: 'https://gateway.marvel.com:443/'))
        ..interceptors.add(marvelApiAuthInterceptor);
}
