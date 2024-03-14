import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/colors.dart';
import 'package:personal_portfolio/model/modelsclass1.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenwidth = screensize.width;
    final screenHeight = screensize.height;
    return Container(
      width: screenwidth,
      color: Colors.grey,
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 30),
      child: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: Stack(
              children: [
                const Center(
                  child: Text(
                    "Education",
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontFamily: AutofillHints.creditCardType,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 350),
                  child: Container(
                    height: 570,
                    width: 5,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 333, top: 110),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        border: Border.all(width: 3, color: Colors.purple)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 333, top: 340),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        border: Border.all(width: 3, color: Colors.amber)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 333, top: 580),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        border: Border.all(
                            width: 3, color: Colors.deepPurpleAccent)),
                  ),
                ),
                // first Data
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 20),
                  child: Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Container(
                        height: 130,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.purple, width: 3),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                  color: Colors.transparent,
                                  offset: Offset(2, 4)),
                            ]),
                        child: ListView(
                          padding: EdgeInsets.all(20),
                          scrollDirection: Axis.vertical,
                          children: const [
                            Text(
                              'Bachelor Of Technology (Computer Science)',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Eshan College Of Engineering",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: AutofillHints.creditCardType,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                                Text(
                                  ' - 2020-2024',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontFamily: AutofillHints.creditCardType,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Text(
                                  'SGPA :',
                                  style: TextStyle(
                                    fontFamily: AutofillHints.creditCardType,
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Text(
                                  '7.2',
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 17,
                                    fontFamily: AutofillHints.creditCardType,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                ),
                // second data
                Padding(
                  padding: const EdgeInsets.only(top: 290, left: 380),
                  child: Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Container(
                        height: 110,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.amber, width: 3),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                  color: Colors.transparent,
                                  offset: Offset(2, 4)),
                            ]),
                        child: ListView(
                          padding: EdgeInsets.all(20),
                          scrollDirection: Axis.vertical,
                          children: const [
                            Text(
                              'Senior Secondary  (Science)',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Text(
                                  "G.R.V Inter College    :",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: AutofillHints.creditCardType,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text(
                                  '2019-2020',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontFamily: AutofillHints.creditCardType,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Percentage :',
                                  style: TextStyle(
                                    fontFamily: AutofillHints.creditCardType,
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                                SizedBox(
                                  width: 46,
                                ),
                                Text(
                                  '55',
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 17,
                                    fontFamily: AutofillHints.creditCardType,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                ),

                //Third data
                Padding(
                  padding: const EdgeInsets.only(top: 530, left: 20),
                  child: Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Container(
                        height: 110,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.deepPurpleAccent, width: 3),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                  color: Colors.transparent,
                                  offset: Offset(2, 4)),
                            ]),
                        child: ListView(
                          padding: EdgeInsets.all(20),
                          scrollDirection: Axis.vertical,
                          children: const [
                            Text(
                              'Higher Secondary  (Science)',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Text(
                                  "G.R.V Inter College    :",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: AutofillHints.creditCardType,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Text(
                                  '2017-2018',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontFamily: AutofillHints.creditCardType,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Percentage :',
                                  style: TextStyle(
                                    fontFamily: AutofillHints.creditCardType,
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                                SizedBox(
                                  width: 46,
                                ),
                                Text(
                                  '73',
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 17,
                                    fontFamily: AutofillHints.creditCardType,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
