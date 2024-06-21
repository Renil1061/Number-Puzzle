import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NumP(),
    theme: ThemeData(
      primaryColor: Colors.black,
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class NumP extends StatefulWidget {
  const NumP({Key? key}) : super(key: key);

  @override
  State<NumP> createState() => _MyNumberNumPState();
}

class _MyNumberNumPState extends State<NumP> {
  List<String> list = ["1", "2", "3", "4", "5", "6", "7", "8", ""];

  Num() {
    if (list[0] == "1" &&
        list[1] == "2" &&
        list[2] == "3" &&
        list[3] == "4" &&
        list[4] == "5" &&
        list[5] == "6" &&
        list[6] == "7" &&
        list[7] == "8" &&
        list[8] == "") {
      showDialog(
        context: context,
        builder: (context) {
          return Center(
              child: AlertDialog(
            backgroundColor: Colors.grey[600],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.grey, width: 2),
            ),
            title:
                Center(child: Text("You Win", style: TextStyle(fontSize: 30))),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      list = ["1", "2", "3", "4", "5", "6", "7", "", "8"];
                    });
                    list.shuffle();
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Play Again",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ));
        },
      );
    }
  }

  @override
  void initState() {
    super.initState();
    list.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey[900],
          title: Text(
            "Trio Tiles",
            style: TextStyle(
                color: Colors.white, fontSize: 32, fontFamily: "Schyler"),
          ),
        ),
        backgroundColor: Colors.grey[850],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 350,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              splashColor: Colors.red,
                              onTap: () {
                                setState(() {
                                  if (list[3] == "") {
                                    list[3] = list[0];
                                    list[0] = "";
                                  } else if (list[1] == "") {
                                    list[1] = list[0];
                                    list[0] = "";
                                  }
                                });
                                Num();
                              },
                              child: Container(
                                height: 200,
                                color: Colors.grey[850],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[850],
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade900,
                                        offset: Offset(5, 5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                      BoxShadow(
                                        color: Colors.grey.shade800,
                                        offset: Offset(-5, -5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.all(10),
                                  child: Center(
                                    child: Text(
                                      list[0],
                                      style: TextStyle(
                                          fontSize: 70,
                                          color: Colors.grey,
                                          fontFamily: "pro"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  if (list[4] == "") {
                                    list[4] = list[1];
                                    list[1] = "";
                                  } else if (list[0] == "") {
                                    list[0] = list[1];
                                    list[1] = "";
                                  } else if (list[2] == "") {
                                    list[2] = list[1];
                                    list[1] = "";
                                  }
                                  Num();
                                });
                              },
                              child: Container(
                                height: 200,
                                color: Colors.grey[850],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[850],
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade900,
                                        offset: Offset(5, 5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                      BoxShadow(
                                        color: Colors.grey.shade800,
                                        offset: Offset(-5, -5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.all(10),
                                  child: Center(
                                    child: Text(
                                      list[1],
                                      style: TextStyle(
                                          fontSize: 70,
                                          color: Colors.grey,
                                          fontFamily: "pro"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  if (list[5] == "") {
                                    list[5] = list[2];
                                    list[2] = "";
                                  } else if (list[1] == "") {
                                    list[1] = list[2];
                                    list[2] = "";
                                  }
                                });
                                Num();
                              },
                              child: Container(
                                height: 200,
                                color: Colors.grey[850],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[850],
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade900,
                                        offset: Offset(5, 5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                      BoxShadow(
                                        color: Colors.grey.shade800,
                                        offset: Offset(-5, -5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.all(10),
                                  child: Center(
                                    child: Text(
                                      list[2],
                                      style: TextStyle(
                                          fontSize: 70,
                                          color: Colors.grey,
                                          fontFamily: "pro"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  if (list[6] == "") {
                                    list[6] = list[3];
                                    list[3] = "";
                                  } else if (list[4] == "") {
                                    list[4] = list[3];
                                    list[3] = "";
                                  } else if (list[0] == "") {
                                    list[0] = list[3];
                                    list[3] = "";
                                  }
                                });
                                Num();
                              },
                              child: Container(
                                height: 200,
                                color: Colors.grey[850],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[850],
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade900,
                                        offset: Offset(5, 5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                      BoxShadow(
                                        color: Colors.grey.shade800,
                                        offset: Offset(-5, -5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.all(10),
                                  child: Center(
                                    child: Text(
                                      list[3],
                                      style: TextStyle(
                                          fontSize: 70,
                                          color: Colors.grey,
                                          fontFamily: "pro"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  if (list[7] == "") {
                                    list[7] = list[4];
                                    list[4] = "";
                                  } else if (list[5] == "") {
                                    list[5] = list[4];
                                    list[4] = "";
                                  } else if (list[3] == "") {
                                    list[3] = list[4];
                                    list[4] = "";
                                  } else if (list[1] == "") {
                                    list[1] = list[4];
                                    list[4] = "";
                                  }
                                });
                                Num();
                              },
                              child: Container(
                                height: 200,
                                color: Colors.grey[850],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[850],
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade900,
                                        offset: Offset(5, 5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                      BoxShadow(
                                        color: Colors.grey.shade800,
                                        offset: Offset(-5, -5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.all(10),
                                  child: Center(
                                    child: Text(
                                      list[4],
                                      style: TextStyle(
                                          fontSize: 70,
                                          color: Colors.grey,
                                          fontFamily: "pro"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  if (list[8] == "") {
                                    list[8] = list[5];
                                    list[5] = "";
                                  } else if (list[4] == "") {
                                    list[4] = list[5];
                                    list[5] = "";
                                  } else if (list[2] == "") {
                                    list[2] = list[5];
                                    list[5] = "";
                                  }
                                });
                                Num();
                              },
                              child: Container(
                                height: 200,
                                color: Colors.grey[850],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[850],
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade900,
                                        offset: Offset(5, 5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                      BoxShadow(
                                        color: Colors.grey.shade800,
                                        offset: Offset(-5, -5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.all(10),
                                  child: Center(
                                    child: Text(
                                      list[5],
                                      style: TextStyle(
                                          fontSize: 70,
                                          color: Colors.grey,
                                          fontFamily: "pro"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  if (list[3] == "") {
                                    list[3] = list[6];
                                    list[6] = "";
                                  } else if (list[7] == "") {
                                    list[7] = list[6];
                                    list[6] = "";
                                  }
                                });
                                Num();
                              },
                              child: Container(
                                height: 200,
                                color: Colors.grey[850],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[850],
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade900,
                                        offset: Offset(5, 5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                      BoxShadow(
                                        color: Colors.grey.shade800,
                                        offset: Offset(-5, -5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.all(10),
                                  child: Center(
                                    child: Text(
                                      list[6],
                                      style: TextStyle(
                                          fontSize: 70,
                                          color: Colors.grey,
                                          fontFamily: "pro"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  if (list[8] == "") {
                                    list[8] = list[7];
                                    list[7] = "";
                                  } else if (list[6] == "") {
                                    list[6] = list[7];
                                    list[7] = "";
                                  } else if (list[4] == "") {
                                    list[4] = list[7];
                                    list[7] = "";
                                  }
                                });
                                Num();
                              },
                              child: Container(
                                height: 200,
                                color: Colors.grey[850],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[850],
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade900,
                                        offset: Offset(5, 5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                      BoxShadow(
                                        color: Colors.grey.shade800,
                                        offset: Offset(-5, -5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.all(10),
                                  child: Center(
                                    child: Text(
                                      list[7],
                                      style: TextStyle(
                                          fontSize: 70,
                                          color: Colors.grey,
                                          fontFamily: "pro"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  if (list[5] == "") {
                                    list[5] = list[8];
                                    list[8] = "";
                                  } else if (list[7] == "") {
                                    list[7] = list[8];
                                    list[8] = "";
                                  }
                                });
                                Num();
                              },
                              child: Container(
                                height: 200,
                                color: Colors.grey[850],
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[850],
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade900,
                                        offset: Offset(5, 5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                      BoxShadow(
                                        color: Colors.grey.shade800,
                                        offset: Offset(-5, -5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.all(10),
                                  child: Center(
                                    child: Text(
                                      list[8],
                                      style: TextStyle(
                                          fontSize: 70,
                                          color: Colors.grey,
                                          fontFamily: "pro"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            FloatingActionButton(
              backgroundColor: Colors.grey,
              child: Text("Reset"),
              onPressed: () {
                setState(() {
                  list.shuffle();
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
