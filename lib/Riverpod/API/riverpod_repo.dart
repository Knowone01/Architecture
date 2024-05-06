import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'riverpod_model.dart';
part 'riverpod_repo.g.dart';

@riverpod
Future<RiverpodModel> riverpodmodel(RiverpodmodelRef ref) async{
  final response = await http.get(Uri.https('https://www.boredapi.com/api/activity, /api/activity'));
  final json = jsonDecode(response.body) as Map<String, dynamic>;
return RiverpodModel.fromJson(json);
}