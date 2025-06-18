import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../questoinnaire/questionnaire_bloc.dart';
import '../questoinnaire/questionnaire_data.dart';
import '../questoinnaire/questionnaire_events.dart';
import '../widgets/questionnaire_screen_widget.dart';

class QuestionnairePage extends StatefulWidget {
  const QuestionnairePage({super.key});

  @override
  State<QuestionnairePage> createState() => _QuestionnairePageState();
}

class _QuestionnairePageState extends State<QuestionnairePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => QuestionnaireBloc(
            questionnaireRepository: MockQuestionnaireRepository())
          ..add(LoadQuestionnaire()),
        child: const QuestionnaireScreenWidget(),
      )
    );
  }
}
