

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pd;
import 'package:printing/printing.dart';


class Resume extends StatefulWidget {
  const Resume({super.key});

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          generatePdf();
        },
        child: const Icon(Icons.download),
      ),
    );
  }

  generatePdf() async {
    final pdf = pd.Document();
    pdf.addPage(
      pd.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pd.Column(
              mainAxisAlignment: pd.MainAxisAlignment.spaceEvenly,
              children: [
                pd.Row(
                  crossAxisAlignment: pd.CrossAxisAlignment.start,
                  //  mainAxisAlignment: pd.MainAxisAlignment.start,
                  children: [
                    pd.Stack(children: [
                      pd.Container(
                        height: 720,
                        width: 225,
                        decoration: const pd.BoxDecoration(
                        ),
                      ),
                      pd.Positioned(
                        top: 200,
                        left: 30,
                        child: pd.Text(
                          'Contact',
                          style: pd.TextStyle(
                            fontSize: 18,
                            fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                      ),
                      pd.Positioned(
                        top: 225,
                        left: 30,
                        child: pd.Container(
                          width: 150,
                          height: 4,
                          child: pd.Divider(
                            thickness: 2,
                          ),
                        ),
                      ),

                      pd.Positioned(
                        top: 400,
                        left: 30,
                        child: pd.Text(
                          "SKILLS",
                          style: pd.TextStyle(
                            fontSize: 20,
                            fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                      ),
                      pd.Positioned(
                        top: 430,
                        left: 30,
                        child: pd.Container(
                          width: 150,
                          height: 4,
                          child: pd.Divider(
                            thickness: 2,
                          ),
                        ),
                      ),
                      pd.Positioned(
                        top: 450,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.SizedBox(width: 10),
                            pd.Text(
                              "- Team Work",
                              style: const pd.TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pd.Positioned(
                        top: 470,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.SizedBox(width: 10),
                            pd.Text(
                              "- Time Management",
                              style: const pd.TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),

                      pd.Positioned(
                        top: 530,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.SizedBox(width: 10),
                            pd.Text(
                              "  Communication",
                              style: pd.TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pd.Positioned(
                        top: 560,
                        left: 30,
                        child: pd.Text(
                          "language",
                          style: pd.TextStyle(
                            fontSize: 20,
                            fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                      ),
                      pd.Positioned(
                        top: 585,
                        left: 30,
                        child: pd.Container(
                          width: 150,
                          height: 4,
                          child: pd.Divider(
                            thickness: 2,
                          ),
                        ),
                      ),
                      pd.Positioned(
                        top: 600,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.SizedBox(width: 10),
                            pd.Text(
                              "- English",
                              style: pd.TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pd.Positioned(
                        top: 630,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.SizedBox(width: 10),
                            pd.Text(
                              "- French",
                              style: pd.TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      pd.Positioned(
                        top: 720,
                        left: 30,
                        child: pd.Row(
                          children: [
                            pd.SizedBox(width: 10),
                            pd.Text(
                              "  Hindi",
                              style: pd.TextStyle(
                                fontSize: 18,
                                fontWeight: pd.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                    pd.Column(
                      crossAxisAlignment: pd.CrossAxisAlignment.start,
                      children: [
                        pd.Text(
                          "   Sanju Afre",
                          style: pd.TextStyle(
                            fontSize: 35,
                            fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                        pd.SizedBox(height: 10),
                        pd.Text(
                          "      FLUTTER DEVELOPER",
                          style: pd.TextStyle(
                            fontSize: 20,
                            // fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                        pd.SizedBox(height: 70),
                        pd.Text(
                          "     PROFESSIONAL PROFILE",
                          style: pd.TextStyle(
                            fontSize: 22,
                            fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                        pd.Container(
                          margin: pd.EdgeInsets.symmetric(horizontal: 30),
                          width: 290,
                          height: 4,
                          child: pd.Divider(
                            thickness: 2,
                          ),
                        ),
                        pd.SizedBox(height: 15),
                        pd.Text(
                          "       I am a growth hacker with 3+ years of \n       experience in sales and marketing in the \n       US market.\n",
                          style: pd.TextStyle(
                            fontSize: 15,
                            //  fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                        pd.SizedBox(height: 20),
                        pd.Text(
                          "     WORK EXPERIENCE",
                          style: pd.TextStyle(
                            fontSize: 22,
                            fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                        pd.Container(
                          margin: pd.EdgeInsets.symmetric(horizontal: 30),
                          width: 290,
                          height: 4,
                          child: pd.Divider(
                            thickness: 2,
                          ),
                        ),
                        pd.SizedBox(height: 15),
                        pd.Text(
                          "       President",
                          style: pd.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        pd.SizedBox(height: 5),
                        pd.Text(
                          "       April 2020 - June 2024",
                          style: pd.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        pd.SizedBox(height: 10),
                        pd.Text(
                          "       Effectively managed team of over 270 \n       employees in 12 locations in 3 countries.\n       Oversaw executive leadership, company \n       training, and public relations with media.",
                          style: pd.TextStyle(
                            fontSize: 15,
                            //  fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                        pd.SizedBox(height: 20),
                        pd.Text(
                          "     EDUCATION",
                          style: pd.TextStyle(
                            fontSize: 22,
                            fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                        pd.Container(
                          margin: pd.EdgeInsets.symmetric(horizontal: 30),
                          width: 290,
                          height: 4,
                          child: pd.Divider(
                            thickness: 2,
                          ),
                        ),
                        pd.SizedBox(height: 20),
                        pd.Text(
                          "      Flutter Development",
                          style: pd.TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        pd.SizedBox(height: 20),
                        pd.Text(
                          "     REFERENCE",
                          style: pd.TextStyle(
                            fontSize: 22,
                            fontWeight: pd.FontWeight.bold,
                          ),
                        ),
                        pd.Container(
                          margin: pd.EdgeInsets.symmetric(horizontal: 30),
                          width: 290,
                          height: 4,
                          child: pd.Divider(
                            thickness: 4,
                          ),
                        ),
                        pd.SizedBox(height: 20),
                        pd.Text(
                          "       NAME:- Sanju Afre",
                          style: pd.TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        pd.Text(
                          "       RNW",
                          style: pd.TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        pd.Text(
                          "       Phone:- 9173074442",
                          style: pd.TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        pd.Text(
                          "       NAME:- Sanjuafre08@gmail.com",
                          style: pd.TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ]);
        },
      ),
    );
    await Printing.layoutPdf(onLayout: (format) async => await pdf.save());
    PdfPreview(
      build: (format) => pdf.save(),
    );
  }
}
