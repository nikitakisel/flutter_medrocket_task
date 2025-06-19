import 'package:equatable/equatable.dart';
import 'package:flutter_medrocket_task/questoinnaire/questionnaire_data.dart';

abstract class QuestionnaireState extends Equatable {
  const QuestionnaireState();

  @override
  List<Object> get props => [];
}

class QuestionnaireInitial extends QuestionnaireState {}

class QuestionnaireLoading extends QuestionnaireState {}

class QuestionnaireLoaded extends QuestionnaireState {
  final Questionnaire questionnaire;

  const QuestionnaireLoaded({required this.questionnaire});

  @override
  List<Object> get props => [questionnaire];
}

class QuestionnaireError extends QuestionnaireState {
  final String message;

  const QuestionnaireError({required this.message});

  @override
  List<Object> get props => [message];
}
