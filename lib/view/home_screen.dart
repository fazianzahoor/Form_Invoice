import 'package:flutter/material.dart';
import 'package:mvc_invoice/widgets.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: size.width / 1.5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CustomText(
                                "Invoices", 30, FontWeight.bold, Colors.black),
                            Spacer(),
                            Container(
                                height: 35,
                                width: 95,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue,
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4),
                                        child: CustomIcon(
                                          Icons.add_circle_outline_outlined,
                                          15,
                                          Colors.white,
                                        ),
                                      ),
                                      CustomText(" Invoice", 15,
                                          FontWeight.bold, Colors.white)
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        height: 560,
                        width: size.width / 1.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 3,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: DataTable(columns: [
                          DataColumn(
                              label: (Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  }))),
                          DataColumn(
                              label: (CustomText(" Invoice", 15,
                                  FontWeight.bold, Colors.black))),
                          DataColumn(
                              label: (CustomText("Company", 15, FontWeight.bold,
                                  Colors.black))),
                          DataColumn(
                              label: (CustomText("Invoice Date", 15,
                                  FontWeight.bold, Colors.black))),
                          DataColumn(
                              label: (CustomText("Due Date", 15,
                                  FontWeight.bold, Colors.black))),
                          DataColumn(
                              label: (CustomText("Status", 15, FontWeight.bold,
                                  Colors.black))),
                          DataColumn(
                              label: (CustomText("Amount", 15, FontWeight.bold,
                                  Colors.black))),
                        ], rows: [
                          DataRow(cells: [
                            DataCell((Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }))),
                            DataCell(CustomText("INV - 1001", 12,
                                FontWeight.normal, Colors.blue)),
                            DataCell(CustomText("Openlane", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.red[100]),
                              child: Center(
                                  child: CustomText("Unpaid", 12,
                                      FontWeight.bold, Colors.red[400])),
                            )),
                            DataCell(CustomText("\$2,350.00", 12,
                                FontWeight.normal, Colors.black)),
                          ]),
                          DataRow(cells: [
                            DataCell((Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }))),
                            DataCell(CustomText("INV - 1002", 12,
                                FontWeight.normal, Colors.blue)),
                            DataCell(CustomText("Gogozoom", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.green[100]),
                              child: Center(
                                  child: CustomText("Paid", 12, FontWeight.bold,
                                      Colors.green[400])),
                            )),
                            DataCell(CustomText("\$750.83", 12,
                                FontWeight.normal, Colors.black)),
                          ]),
                          DataRow(cells: [
                            DataCell((Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }))),
                            DataCell(CustomText("INV - 1003", 12,
                                FontWeight.normal, Colors.blue)),
                            DataCell(CustomText("Nam-zim", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.yellow[100]),
                              child: Center(
                                  child: CustomText("Pending", 12,
                                      FontWeight.bold, Colors.yellow[400])),
                            )),
                            DataCell(CustomText("\$1,200.00", 12,
                                FontWeight.normal, Colors.black)),
                          ]),
                          DataRow(cells: [
                            DataCell((Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }))),
                            DataCell(CustomText("INV - 1004", 12,
                                FontWeight.normal, Colors.blue)),
                            DataCell(CustomText("Sunnamplex", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.green[100]),
                              child: Center(
                                  child: CustomText("Paid", 12, FontWeight.bold,
                                      Colors.green[400])),
                            )),
                            DataCell(CustomText("\$2,500.00", 12,
                                FontWeight.normal, Colors.black)),
                          ]),
                          DataRow(cells: [
                            DataCell((Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }))),
                            DataCell(CustomText("INV - 1005", 12,
                                FontWeight.normal, Colors.blue)),
                            DataCell(CustomText("Codehow", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.red[100]),
                              child: Center(
                                  child: CustomText("Unpaid", 12,
                                      FontWeight.bold, Colors.red[400])),
                            )),
                            DataCell(CustomText("\$3,200.00", 12,
                                FontWeight.normal, Colors.black)),
                          ]),
                          DataRow(cells: [
                            DataCell((Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }))),
                            DataCell(CustomText("INV - 1006", 12,
                                FontWeight.normal, Colors.blue)),
                            DataCell(CustomText(
                                "Konex", 12, FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.yellow[100]),
                              child: Center(
                                  child: CustomText(
                                      "Pending",
                                      12,
                                      FontWeight.bold,
                                      Colors.yellowAccent[400])),
                            )),
                            DataCell(CustomText("\$850.00", 12,
                                FontWeight.normal, Colors.black)),
                          ]),
                          DataRow(cells: [
                            DataCell((Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }))),
                            DataCell(CustomText("INV - 1007", 12,
                                FontWeight.normal, Colors.blue)),
                            DataCell(CustomText(
                                "Inity", 12, FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.green[100]),
                              child: Center(
                                  child: CustomText("Paid", 12, FontWeight.bold,
                                      Colors.green[400])),
                            )),
                            DataCell(CustomText("\$500.00", 12,
                                FontWeight.normal, Colors.black)),
                          ]),
                          DataRow(cells: [
                            DataCell((Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }))),
                            DataCell(CustomText("INV - 1008", 12,
                                FontWeight.normal, Colors.blue)),
                            DataCell(CustomText("Doomzoom", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.yellow[100]),
                              child: Center(
                                  child: CustomText("Pending", 12,
                                      FontWeight.bold, Colors.yellow[400])),
                            )),
                            DataCell(CustomText("\1,500.00", 12,
                                FontWeight.normal, Colors.black)),
                          ]),
                          DataRow(cells: [
                            DataCell((Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }))),
                            DataCell(CustomText("INV - 1009", 12,
                                FontWeight.normal, Colors.blue)),
                            DataCell(CustomText("Betasoloin", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.green[100]),
                              child: Center(
                                  child: CustomText("Paid", 12, FontWeight.bold,
                                      Colors.green[400])),
                            )),
                            DataCell(CustomText("\2,400.00", 12,
                                FontWeight.normal, Colors.black)),
                          ]),
                          DataRow(cells: [
                            DataCell((Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }))),
                            DataCell(CustomText("INV - 1010", 12,
                                FontWeight.normal, Colors.blue)),
                            DataCell(CustomText("Kinamplus", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(CustomText("05/10/2023", 12,
                                FontWeight.normal, Colors.black)),
                            DataCell(Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.green[100]),
                              child: Center(
                                  child: CustomText("Paid", 12, FontWeight.bold,
                                      Colors.green[400])),
                            )),
                            DataCell(CustomText("\$400.00", 12,
                                FontWeight.normal, Colors.black)),
                          ]),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
