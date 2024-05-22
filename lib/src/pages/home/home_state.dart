import 'package:rickandmorty/src/models/characters/characters_model.dart';

sealed class HomeState {}

class InitalHomeState extends HomeState {}

class LoadingHomeState extends HomeState {}

class LoadedHomeState extends HomeState {
  final List<CharactersModel> characters;
  LoadedHomeState({
    required this.characters,
  });
}

class FailureHomeState extends HomeState {
  final String message;
  FailureHomeState({
    required this.message,
  });
}
