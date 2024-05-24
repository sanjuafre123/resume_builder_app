import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pd;
import 'package:printing/printing.dart';

import '../../Utils/Color/Color_List.dart';
import '../Contect/contectscreen.dart';

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
    final image = pd.MemoryImage(
      File(fileImage!.path).readAsBytesSync(),
    );

    pdf.addPage(
      pd.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pd.Column(
              mainAxisAlignment: pd.MainAxisAlignment.spaceEvenly,
              children: [
                pd.Row(
                  crossAxisAlignment: pd.CrossAxisAlignment.start,
                  children: [
                    pd.Column(children: [
                      pd.Container(
                        height: 140,
                        width: 140,
                        decoration: pd.BoxDecoration(
                          border: pd.Border.all(width: 5,color: PdfColors.black,),borderRadius: pd.BorderRadius.circular(15),
                        ),
                        child: pd.Image(image,
                        fit: pd.BoxFit.cover),),
                      pd.SizedBox(
                        height: 30
                      ),
                      pd.Row(
                        children: [
                          pd.Text('Contact',style: pd.TextStyle(color: PdfColors.black,fontSize: 30),),

                        ]
                      ),
                      pd.Container(
                        margin: pd.EdgeInsets.symmetric(horizontal: 30),
                        width: 130,
                        height: 4,
                        child: pd.Divider(
                          thickness: 2,
                        ),
                      ),
                     pd.Column(
                       crossAxisAlignment: pd.CrossAxisAlignment.start,
                       children: [
                         pd.Text('$first',style: pd.TextStyle(fontSize: 20,fontWeight: pd.FontWeight.bold)),
                         pd.Text('$last',style: pd.TextStyle(fontSize: 20,fontWeight: pd.FontWeight.bold)),
                         pd.Text('$Email',style: pd.TextStyle(fontSize: 20,fontWeight: pd.FontWeight.bold)),
                         pd.Text('$city',style: pd.TextStyle(fontSize: 20,fontWeight: pd.FontWeight.bold)),
                         pd.Text('$country',style: pd.TextStyle(fontSize: 20,fontWeight: pd.FontWeight.bold)),
                         pd.Text('$Nationality',style: pd.TextStyle(fontSize: 20,fontWeight: pd.FontWeight.bold)),
                         pd.Text('$postcode',style: pd.TextStyle(fontSize: 20,fontWeight: pd.FontWeight.bold)),
                         pd.Text('$Driving',style: pd.TextStyle(fontSize: 20,fontWeight: pd.FontWeight.bold)),
                         pd.Text('$Website',style: pd.TextStyle(fontSize: 20,fontWeight: pd.FontWeight.bold)),
                       ]
                     ),
                      pd.SizedBox(
                          height: 30
                      ),
                      pd.Row(
                          children: [
                            pd.Text('Skill',style: pd.TextStyle(color: PdfColors.black,fontSize: 30),),

                          ]
                      ),
                      pd.Container(
                        margin: pd.EdgeInsets.symmetric(horizontal: 30),
                        width: 130,
                        height: 4,
                        child: pd.Divider(
                          thickness: 2,
                        ),
                      ),
                      pd.SizedBox(
                        height: 20
                      ),
                      pd.Column(
                          crossAxisAlignment: pd.CrossAxisAlignment.start,
                          children: [
                            pd.Text('C Language',style: pd.TextStyle(fontSize: 20,fontWeight: pd.FontWeight.bold)),
                            pd.Text('Cpp Language',style: pd.TextStyle(fontSize: 20,fontWeight: pd.FontWeight.bold)),
                            pd.Text('dart Language',style: pd.TextStyle(fontSize: 20,fontWeight: pd.FontWeight.bold)),
                          ]
                      )
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
