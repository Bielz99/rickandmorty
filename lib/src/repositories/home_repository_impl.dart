import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:rickandmorty/src/core/api_service/api_service.dart';
import 'package:rickandmorty/src/models/characters/characters_model.dart';

import './home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final ApiService apiService;
  HomeRepositoryImpl({
    required this.apiService,
  });
  @override
  Future<List<CharactersModel>> getAllCharacters() async {
    try {
      final result = await apiService.get('/character');
      return result.data
          .map<CharactersModel>(
            (p) => CharactersModel.fromMap(p),
          )
          .toList();
    } on DioException catch (e, s) {
      log('Erro', error: e, stackTrace: s);
      throw Exception('Erro ao consumir api');
    }
  }
}
