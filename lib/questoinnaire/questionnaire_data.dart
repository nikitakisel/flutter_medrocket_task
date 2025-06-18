class Questionnaire {
  final int completionPercentage;

  Questionnaire({required this.completionPercentage});
}

abstract class QuestionnaireRepository {
  Future<Questionnaire> getQuestionnaire();
}

class MockQuestionnaireRepository implements QuestionnaireRepository {
  @override
  Future<Questionnaire> getQuestionnaire() async {
    await Future.delayed(const Duration(seconds: 1));
    return Questionnaire(completionPercentage: 52);
  }
}
