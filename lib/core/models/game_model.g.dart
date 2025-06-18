// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameModelImpl _$$GameModelImplFromJson(Map<String, dynamic> json) =>
    _$GameModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      config: GameConfigModel.fromJson(json['config'] as Map<String, dynamic>),
      levels: (json['levels'] as List<dynamic>?)
          ?.map((e) => GameLevelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      instructions: json['instructions'] as String?,
      imageUrl: json['imageUrl'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$$GameModelImplToJson(_$GameModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'config': instance.config,
      'levels': instance.levels,
      'instructions': instance.instructions,
      'imageUrl': instance.imageUrl,
      'metadata': instance.metadata,
      'isActive': instance.isActive,
    };

_$GameConfigModelImpl _$$GameConfigModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GameConfigModelImpl(
      timeLimit: (json['timeLimit'] as num).toInt(),
      minScore: (json['minScore'] as num).toInt(),
      maxScore: (json['maxScore'] as num).toInt(),
      difficulty: (json['difficulty'] as num).toDouble(),
      parameters: json['parameters'] as Map<String, dynamic>?,
      allowedInputs: (json['allowedInputs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      scoringMethod: json['scoringMethod'] as String?,
    );

Map<String, dynamic> _$$GameConfigModelImplToJson(
        _$GameConfigModelImpl instance) =>
    <String, dynamic>{
      'timeLimit': instance.timeLimit,
      'minScore': instance.minScore,
      'maxScore': instance.maxScore,
      'difficulty': instance.difficulty,
      'parameters': instance.parameters,
      'allowedInputs': instance.allowedInputs,
      'scoringMethod': instance.scoringMethod,
    };

_$GameLevelModelImpl _$$GameLevelModelImplFromJson(Map<String, dynamic> json) =>
    _$GameLevelModelImpl(
      id: json['id'] as String,
      level: (json['level'] as num).toInt(),
      name: json['name'] as String,
      config: GameConfigModel.fromJson(json['config'] as Map<String, dynamic>),
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => GameQuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      assets: json['assets'] as Map<String, dynamic>?,
      isUnlocked: json['isUnlocked'] as bool?,
    );

Map<String, dynamic> _$$GameLevelModelImplToJson(
        _$GameLevelModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'name': instance.name,
      'config': instance.config,
      'questions': instance.questions,
      'assets': instance.assets,
      'isUnlocked': instance.isUnlocked,
    };

_$GameQuestionModelImpl _$$GameQuestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GameQuestionModelImpl(
      id: json['id'] as String,
      question: json['question'] as String,
      type: json['type'] as String,
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
      correctAnswer: json['correctAnswer'] as String,
      explanation: json['explanation'] as String?,
      imageUrl: json['imageUrl'] as String?,
      audioUrl: json['audioUrl'] as String?,
      timeLimit: (json['timeLimit'] as num?)?.toInt(),
      points: (json['points'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$GameQuestionModelImplToJson(
        _$GameQuestionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'type': instance.type,
      'options': instance.options,
      'correctAnswer': instance.correctAnswer,
      'explanation': instance.explanation,
      'imageUrl': instance.imageUrl,
      'audioUrl': instance.audioUrl,
      'timeLimit': instance.timeLimit,
      'points': instance.points,
    };

_$GameResultModelImpl _$$GameResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GameResultModelImpl(
      id: json['id'] as String,
      gameId: json['gameId'] as String,
      userId: json['userId'] as String,
      score: (json['score'] as num).toInt(),
      timeSpent: (json['timeSpent'] as num).toInt(),
      correctAnswers: (json['correctAnswers'] as num).toInt(),
      totalQuestions: (json['totalQuestions'] as num).toInt(),
      accuracy: (json['accuracy'] as num).toDouble(),
      completedAt: DateTime.parse(json['completedAt'] as String),
      detailedResults: json['detailedResults'] as Map<String, dynamic>?,
      feedback: json['feedback'] as String?,
      recommendation: json['recommendation'] as String?,
    );

Map<String, dynamic> _$$GameResultModelImplToJson(
        _$GameResultModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gameId': instance.gameId,
      'userId': instance.userId,
      'score': instance.score,
      'timeSpent': instance.timeSpent,
      'correctAnswers': instance.correctAnswers,
      'totalQuestions': instance.totalQuestions,
      'accuracy': instance.accuracy,
      'completedAt': instance.completedAt.toIso8601String(),
      'detailedResults': instance.detailedResults,
      'feedback': instance.feedback,
      'recommendation': instance.recommendation,
    };

_$GameSessionModelImpl _$$GameSessionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GameSessionModelImpl(
      id: json['id'] as String,
      gameId: json['gameId'] as String,
      userId: json['userId'] as String,
      startedAt: DateTime.parse(json['startedAt'] as String),
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      currentState: json['currentState'] == null
          ? null
          : GameStateModel.fromJson(
              json['currentState'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => GameActionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$$GameSessionModelImplToJson(
        _$GameSessionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gameId': instance.gameId,
      'userId': instance.userId,
      'startedAt': instance.startedAt.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'currentState': instance.currentState,
      'actions': instance.actions,
      'isActive': instance.isActive,
    };

_$GameStateModelImpl _$$GameStateModelImplFromJson(Map<String, dynamic> json) =>
    _$GameStateModelImpl(
      currentLevel: (json['currentLevel'] as num).toInt(),
      currentQuestion: (json['currentQuestion'] as num).toInt(),
      score: (json['score'] as num).toInt(),
      timeRemaining: (json['timeRemaining'] as num).toInt(),
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
      gameData: json['gameData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$GameStateModelImplToJson(
        _$GameStateModelImpl instance) =>
    <String, dynamic>{
      'currentLevel': instance.currentLevel,
      'currentQuestion': instance.currentQuestion,
      'score': instance.score,
      'timeRemaining': instance.timeRemaining,
      'answers': instance.answers,
      'gameData': instance.gameData,
    };

_$GameActionModelImpl _$$GameActionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GameActionModelImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      data: json['data'] as Map<String, dynamic>,
      result: json['result'] as String?,
    );

Map<String, dynamic> _$$GameActionModelImplToJson(
        _$GameActionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'timestamp': instance.timestamp.toIso8601String(),
      'data': instance.data,
      'result': instance.result,
    };
