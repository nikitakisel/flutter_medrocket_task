import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../questoinnaire/questionnaire_bloc.dart';
import '../questoinnaire/questionnaire_states.dart';

class QuestionnaireScreenWidget extends StatelessWidget {
  const QuestionnaireScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
        builder: (context, state) {
          if (state is QuestionnaireInitial) {
            return const Text("Инициализация");
          } else if (state is QuestionnaireLoading) {
            return const Text("Загрузка");
          } else if (state is QuestionnaireLoaded) {
            return Text("Загружено: ${state.questionnaire.completionPercentage}%");
          } else if (state is QuestionnaireError) {
            return Text("Ошибка: ${state.message}");
          } else {
            return const Text("Неизвестное состояние");
          }
        },
      ),
    );
  }
}
