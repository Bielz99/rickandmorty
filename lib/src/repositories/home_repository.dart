import 'package:rickandmorty/src/models/characters/characters_model.dart';

abstract interface class HomeRepository {
  Future<List<CharactersModel>> getAllCharacters();
}
