import 'dart:io';

import 'package:cerdo_app/global/pdf/save_and_open_pdf.dart';
import 'package:pdf/widgets.dart';

class SimplePdfApi {
  static Future<File> generateSimpleTextPdf(
      String text, String text2, String text3, String text4, String text5, String text6) async {
    final pdf = Document();
    pdf.addPage(
      Page(
        build: (_) => Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(fontSize: 38),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 35),
              Text(text2, style: const TextStyle(fontSize: 28)),
              Text(text3, style: const TextStyle(fontSize: 28)),
              Text(text4, style: const TextStyle(fontSize: 28)),
              Text(text5, style: const TextStyle(fontSize: 28)),
              Text(text6, style: const TextStyle(fontSize: 28)),
            ],
          ),
        ),
      ),
    );
    return SaveAndOpenDocument.savePdf(
        name: 'registro_peso_animal_pdf.pdf', pdf: pdf);
  }
}
