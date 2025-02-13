import 'dart:convert';

import 'package:api_client/src/di/di_parameter_name.dart';
import 'package:crypto/crypto.dart' as crypto;
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class MarvelApiAuthInterceptor extends Interceptor {
  MarvelApiAuthInterceptor(
    @Named(ApiClientDiParameterName.privateApiKey) this._privateApiKey,
    @Named(ApiClientDiParameterName.publicApiKey) this._publicApiKey,
  );

  final String _publicApiKey;
  final String _privateApiKey;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final timestamp = DateTime.now().millisecondsSinceEpoch.toString();

    options.queryParameters['ts'] = timestamp;
    options.queryParameters['apikey'] = _publicApiKey;
    options.queryParameters['hash'] =
        _md5('$timestamp$_privateApiKey$_publicApiKey');

    super.onRequest(options, handler);
  }
}

String _md5(String input) => crypto.md5.convert(utf8.encode(input)).toString();
