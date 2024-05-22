import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:rickandmorty/src/models/characters/characters_model.dart';
import 'package:rickandmorty/src/pages/home/home_state.dart';
import 'package:rickandmorty/src/repositories/home_repository.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository _homeRepository;
  HomeCubit(this._homeRepository) : super(InitalHomeState());

  Future<List<CharactersModel>> getAllCharacters() async {
    emit(LoadingHomeState());
    try {
      final characters = await _homeRepository.getAllCharacters();
      emit(LoadedHomeState(characters: characters));
      return characters;
    } on Exception catch (e, s) {
      log('Erro no cubit', error: e, stackTrace: s);
      rethrow;
    }
  }
}
