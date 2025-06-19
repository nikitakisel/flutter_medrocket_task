import 'package:equatable/equatable.dart';

abstract class QuestionnaireEvent extends Equatable {
  const QuestionnaireEvent();

  @override
  List<Object> get props => [];
}

class LoadQuestionnaire extends QuestionnaireEvent {}
