import 'package:api_client/api_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:marvel_characters/src/domain/model/marvel_characters_response.dart';
import 'package:retrofit/retrofit.dart';

part 'marvel_characters_api.g.dart';

@injectable
@RestApi()
abstract class MarvelCharactersApi {
  @factoryMethod
  factory MarvelCharactersApi(Dio dio) = _MarvelCharactersApi;

  @GET('v1/public/characters')
  Future<MarvelResponse<MarvelCharactersResponse>> getCharacters();
}
