import 'dart:convert';
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkedin_analyst/app/models/result.dart';
import 'package:linkedin_analyst/app/services/gemini_service.dart';
import 'package:linkedin_analyst/globals/string.dart';

final geminiControllerProvider = Provider((ref) {
  final service = ref.watch(geminiServiceProvider);
  return GeminiController(service: service);
});

class GeminiController {
  final GeminiService _service;

  GeminiController({required GeminiService service}) : _service = service;

  Future<Result?> getResult(String post) async {
    final promptResult =
        await _service.getResult("${PromptString.wordPrompt} $post");

    if (promptResult != null) {
      String cleanedResponse =
          promptResult.replaceAll(RegExp(r'```json\n*'), '');

      log(cleanedResponse, name: "ALTER");
      cleanedResponse = cleanedResponse.replaceAll(RegExp(r'```'), '');
      dynamic data = jsonDecode(cleanedResponse);
      Result result = Result.fromMap(data);

      return result;
    } else {
      return null;
    }
  }
}
