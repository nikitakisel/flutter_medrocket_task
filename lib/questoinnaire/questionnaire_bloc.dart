import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_medrocket_task/questoinnaire/questionnaire_data.dart';
import 'package:flutter_medrocket_task/questoinnaire/questionnaire_events.dart';
import 'package:flutter_medrocket_task/questoinnaire/questionnaire_states.dart';

class QuestionnaireBloc extends Bloc<QuestionnaireEvent, QuestionnaireState> {
  final QuestionnaireRepository questionnaireRepository;

  QuestionnaireBloc({required this.questionnaireRepository})
      : super(QuestionnaireInitial()) {
    on<LoadQuestionnaire>(_onLoadQuestionnaire);
  }

  Future<void> _onLoadQuestionnaire(
      LoadQuestionnaire event, Emitter<QuestionnaireState> emit) async {
    emit(QuestionnaireLoading());
    try {
      final questionnaire = await questionnaireRepository.getQuestionnaire();
      emit(QuestionnaireLoaded(questionnaire: questionnaire));
    } catch (e) {
      emit(const QuestionnaireError(message: "Ошибка загрузки опросника"));
    }
  }
}
