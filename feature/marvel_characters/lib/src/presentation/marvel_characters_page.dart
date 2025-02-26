import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel_characters/src/domain/model/marvel_character.dart';
import 'package:marvel_characters/src/presentation/bloc/marvel_characters_bloc.dart';
import 'package:tide_design_system/tide_design_system.dart';
import 'package:tide_di/tide_di.dart';

class MarvelCharactersPage extends StatelessWidget {
  const MarvelCharactersPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => diContainer<MarvelCharactersBloc>(),
        child: const _MarvelCharactersPageContent(),
      );
}

class _MarvelCharactersPageContent extends StatelessWidget {
  const _MarvelCharactersPageContent();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocBuilder<MarvelCharactersBloc, MarvelCharactersState>(
          builder: (context, state) => state.when(
            loading: () => const Loading(),
            error: (e) => Error(message: e.toString()),
            success: (characters) => CharacterList(characters: characters),
          ),
        ),
      );
}

class CharacterList extends StatelessWidget {
  const CharacterList({super.key, required this.characters});

  final List<MarvelCharacter> characters;

  @override
  Widget build(BuildContext context) => GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: characters.length,
        itemBuilder: (_, index) => CharacterItem(character: characters[index]),
      );
}

class CharacterItem extends StatelessWidget {
  const CharacterItem({super.key, required this.character});

  final MarvelCharacter character;

  @override
  Widget build(BuildContext context) => Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Image.network(character.thumbnail.url),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(character.name),
            ),
          ],
        ),
      );
}
