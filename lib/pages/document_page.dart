import 'package:flutter/material.dart';
import 'package:flutter_medrocket_task/widgets/document_info_widget.dart';
import 'package:flutter_medrocket_task/widgets/push_button_widget.dart';

import '../resources/document_page_colors.dart';

class DocumentPage extends StatefulWidget {
  const DocumentPage({super.key});

  @override
  State<DocumentPage> createState() => _DocumentPageState();
}

class _DocumentPageState extends State<DocumentPage> {
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
                      child: ColoredBox(color: DocumentPageColors.horizontalLineColor),
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
                                  child: Stack(
                                    children: [

                                      ColoredBox(
                                        color: DocumentPageColors.infoTextBoxColor,
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "Клиника прислала документ после приёма.\nЧтобы добавить его в медкарту и\nпосмотреть содержание, нужно будет\nуказать дату рождения пациента. Это\nпроверка для безопасности данных.",
                                              style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      Positioned(
                                        bottom: 0.0,
                                        right: 0.0,
                                        child: const Icon(
                                          Icons.info_outline,
                                          size: 40,
                                          color: DocumentPageColors.infoIconColor,
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: PushButtonWidget(
                                width: 300,
                                height: 40,
                                buttonColor: DocumentPageColors.addButtonColor,
                                textColor: Colors.white,
                                onTapFunction: () => (),
                                text: "Добавить в медкарту",
                              ),
                            ),

                            PushButtonWidget(
                              width: 300,
                              height: 40,
                              buttonColor: DocumentPageColors.deleteButtonColor,
                              textColor: DocumentPageColors.deleteButtonTextColor,
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
