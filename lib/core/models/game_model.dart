import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_model.freezed.dart';
part 'game_model.g.dart';

/// Game model for psychometric tests
@freezed
class GameModel with _$GameModel {
  const factory GameModel({
    required String id,
    required String title,
    required String description,
    required String type, // attention, memory, spatial, motor, logic, decision
    required GameConfigModel config,
    List<GameLevelModel>? levels,
    String? instructions,
    String? imageUrl,
    Map<String, dynamic>? metadata,
    bool? isActive,
  }) = _GameModel;

  factory GameModel.fromJson(Map<String, dynamic> json) =>
      _$GameModelFromJson(json);
}

/// Game configuration model
@freezed
class GameConfigModel with _$GameConfigModel {
  const factory GameConfigModel({
    required int timeLimit, // in seconds
    required int minScore,
    required int maxScore,
    required double difficulty,
    Map<String, dynamic>? parameters,
    List<String>? allowedInputs,
    String? scoringMethod, // time, accuracy, speed
  }) = _GameConfigModel;

  factory GameConfigModel.fromJson(Map<String, dynamic> json) =>
      _$GameConfigModelFromJson(json);
}

/// Game level model
@freezed
class GameLevelModel with _$GameLevelModel {
  const factory GameLevelModel({
    required String id,
    required int level,
    required String name,
    required GameConfigModel config,
    List<GameQuestionModel>? questions,
    Map<String, dynamic>? assets,
    bool? isUnlocked,
  }) = _GameLevelModel;

  factory GameLevelModel.fromJson(Map<String, dynamic> json) =>
      _$GameLevelModelFromJson(json);
}

/// Game question model
@freezed
class GameQuestionModel with _$GameQuestionModel {
  const factory GameQuestionModel({
    required String id,
    required String question,
    required String type, // multiple_choice, true_false, drag_drop, click
    required List<String> options,
    required String correctAnswer,
    String? explanation,
    String? imageUrl,
    String? audioUrl,
    int? timeLimit,
    double? points,
  }) = _GameQuestionModel;

  factory GameQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$GameQuestionModelFromJson(json);
}

/// Game result model
@freezed
class GameResultModel with _$GameResultModel {
  const factory GameResultModel({
    required String id,
    required String gameId,
    required String userId,
    required int score,
    required int timeSpent, // in seconds
    required int correctAnswers,
    required int totalQuestions,
    required double accuracy,
    required DateTime completedAt,
    Map<String, dynamic>? detailedResults,
    String? feedback,
    String? recommendation,
  }) = _GameResultModel;

  factory GameResultModel.fromJson(Map<String, dynamic> json) =>
      _$GameResultModelFromJson(json);
}

/// Game session model
@freezed
class GameSessionModel with _$GameSessionModel {
  const factory GameSessionModel({
    required String id,
    required String gameId,
    required String userId,
    required DateTime startedAt,
    DateTime? completedAt,
    GameStateModel? currentState,
    List<GameActionModel>? actions,
    bool? isActive,
  }) = _GameSessionModel;

  factory GameSessionModel.fromJson(Map<String, dynamic> json) =>
      _$GameSessionModelFromJson(json);
}

/// Game state model
@freezed
class GameStateModel with _$GameStateModel {
  const factory GameStateModel({
    required int currentLevel,
    required int currentQuestion,
    required int score,
    required int timeRemaining,
    required List<String> answers,
    Map<String, dynamic>? gameData,
  }) = _GameStateModel;

  factory GameStateModel.fromJson(Map<String, dynamic> json) =>
      _$GameStateModelFromJson(json);
}

/// Game action model
@freezed
class GameActionModel with _$GameActionModel {
  const factory GameActionModel({
    required String id,
    required String type, // answer, skip, pause, resume
    required DateTime timestamp,
    required Map<String, dynamic> data,
    String? result,
  }) = _GameActionModel;

  factory GameActionModel.fromJson(Map<String, dynamic> json) =>
      _$GameActionModelFromJson(json);
} 