import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [

                SizedBox(
                  width: 50,
                  height: 50,
                  child: Center(
                    child: GestureDetector(
                      onTap: () => (),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 25.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: const Text(
                    "Новый документ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),

              ],
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: const Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 1,
                      child: ColoredBox(color: Color(0xFFCED6E3)),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  // Основная часть экрана
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: SizedBox(
                            width: 300,
                            child: Image.asset('assets/img/photo.png'),
                          ),
                        ),
                      ),

                      // Часть с информацией о поступившем документе
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DocumentInfoWidget(
                              icon: Icons.person_outline,
                              textUp: "Ирина",
                            ),

                            DocumentInfoWidget(
                              icon: Icons.event_note,
                              textUp: "22 мая (вт), 16:00",
                              textDown: "Дата получения документа",
                            ),

                            DocumentInfoWidget(
                              icon: Icons.medical_services,
                              textUp: "Клиника «Фомина»",
                              textDown: "Бульвар Перервинский, д. 4",
                            ),

                            DocumentInfoWidget(
                              icon: Icons.monitor_heart,
                              textUp: "Стоматолог",
                            ),
                          ],
                        ),
                      ),

                      // Часть с описанием и кнопками
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(bottom: 50),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: SizedBox(
                                  width: 300,
                                  height: 115,
                                  child: ColoredBox(
                                    color: Color(0xfffff2d9),
                                    child: Center(
                                      child: Text(
                                        "Клиника прислала документ после приёма.\nЧтобы добавить его в медкарту и\nпосмотреть содержание, нужно будет\nуказать дату рождения пациента.\nЭто проверка для безопасности данных.",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: PushButtonWidget(
                                width: 300,
                                height: 40,
                                buttonColor: Color(0xff1a5dd0),
                                textColor: Colors.white,
                                onTapFunction: () => (),
                                text: "Добавить в медкарту",
                              ),
                            ),

                            PushButtonWidget(
                              width: 300,
                              height: 40,
                              buttonColor: Color(0xffecf1fb),
                              textColor: Color(0xff3470d6),
                              fontWeight: FontWeight.bold,
                              onTapFunction: () => (),
                              text: "Удалить",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}


class DocumentInfoWidget extends StatelessWidget {
  final IconData icon;
  final String textUp;
  final String? textDown;

  const DocumentInfoWidget({
    super.key,
    required this.icon,
    required this.textUp,
    this.textDown,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
          height: 50,
          child: Center(
            child: Icon(icon, size: 25.0, color: Color(0xFF9BABBB)),
          ),
        ),

        SizedBox(width: 32),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(textUp),
            if (textDown != null)
              Text(textDown!, style: TextStyle(color: Color(0xFF9BABBB))),
          ],
        ),
      ],
    );
  }
}


class PushButtonWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color buttonColor;
  final Color textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final String text;
  final void Function() onTapFunction;

  const PushButtonWidget({
    super.key,
    required this.width,
    required this.height,
    required this.buttonColor,
    required this.textColor,
    this.fontWeight,
    this.fontSize,
    required this.text,
    required this.onTapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: SizedBox(
          width: width,
          height: height,
          child: ColoredBox(
            color: buttonColor,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontWeight: fontWeight,
                  fontSize: fontSize,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
