import 'package:injectable/injectable.dart';
import 'package:marvel_characters/src/domain/api/marvel_characters_api.dart';
import 'package:marvel_characters/src/domain/model/marvel_character.dart';
import 'package:tide_prelude/tide_prelude.dart';

@injectable
class MarvelCharactersRepository {
  const MarvelCharactersRepository(this._api);

  final MarvelCharactersApi _api;

  Future<Result<List<MarvelCharacter>, Exception>> getCharacters() async {
    final result = await Result.fromAsync(_api.getCharacters);
    return result.map((s) => s.data.characters);
  }
}
