import 'package:flutter/cupertino.dart';

import '../resources/document_page_colors.dart';

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
            child: Icon(icon, size: 25.0, color: DocumentPageColors.mainIconsColor),
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
