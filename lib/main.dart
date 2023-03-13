import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String pilihanSeriMobil = "Brio";
  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> seriMobil = [];
    var itm1 = const DropdownMenuItem<String>(
      value: "Brio",
      child: Text("Brio"),
    );
    var itm2 = const DropdownMenuItem<String>(
      value: "Ayla",
      child: Text("Ayla"),
    );
    var itm3 = const DropdownMenuItem<String>(
      value: "Kijang",
      child: Text("Kijang"),
    );
    seriMobil.add(itm1);
    seriMobil.add(itm2);
    seriMobil.add(itm3);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.red
      ),
      title: 'Hello App',
      home: Scaffold(
          appBar: AppBar(
              leading: FlutterLogo(),
              backgroundColor: Colors.red,
              title: Text('Quiz Flutter'),
              actions: <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Honda"),
                    SizedBox(width: 40,),
                    DropdownButton(
                        items: seriMobil,
                        onChanged: (String? newValue) {
                          setState(() {
                            if (newValue != null) {
                              pilihanSeriMobil = newValue;
                            }
                          });
                        }),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.add, color: Colors.white),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Colors.red, // <-- Button color
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/img/Brio.png", width: 100,),
                        // FlutterLogo(
                        //   size: 80,
                        // ),
                        SizedBox(height: 10,),
                        ElevatedButton(onPressed: () {}, child: Text("DETAIL", style: TextStyle(color: Colors.white,)))
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("BRIO", style: TextStyle(
                          fontSize: 12
                        ),),
                        Text("Nomor Rangka   : 12345", style: TextStyle(
                          fontSize: 12
                        ),),
                        Text("Nomor Mesin     : 54321", style: TextStyle(
                          fontSize: 12
                        ),),
                        Text("Garansi Berlaku : 27-02-2025", style: TextStyle(
                          fontSize: 12
                        ),),
                        Text("Free Service", style: TextStyle(
                          color: Colors.red,
                          fontSize: 12
                        ),),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 1),
                              height: 20.0,
                              width: 20.0,
                              color: Colors.transparent,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                ),
                                child: new Center(
                                  child: new Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white,
                                        ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 1),
                              height: 20.0,
                              width: 20.0,
                              color: Colors.transparent,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                ),
                                child: new Center(
                                  child: new Text(
                                    "2",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white,
                                        ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 1),
                              height: 20.0,
                              width: 20.0,
                              color: Colors.transparent,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                ),
                                child: new Center(
                                  child: new Text(
                                    "3",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white,
                                        ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40.0,
                      width: 100.0,
                      color: Colors.transparent,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                              "Product Update :",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "0",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            ],
                          )),
                    ),
                    Container(
                      height: 40.0,
                      width: 80.0,
                      color: Colors.transparent,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                              "Extra Care",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            ],
                          )),
                    ),
                    Container(
                      height: 40.0,
                      width: 80.0,
                      color: Colors.transparent,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                              "STNK",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "28-07-2021",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            ],
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/img/Brio.png', width: 80,),
                    Image.asset('assets/img/Brio.png', width: 80,),
                    Image.asset('assets/img/Brio.png', width: 80,),
                    Image.asset('assets/img/Brio.png', width: 80,),
                    
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text('Katalog Produk'),
                        Image.asset('assets/img/Brio.png', width: 100,),
                        Text('All New ACCORD')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.red,
                            ),
                            onPressed: () {
                              const Text('Lihat Semua');
                            },
                            child: const Text('Lihat Semua')),
                        Image.asset('assets/img/Brio.png', width: 100,),
                        Text('All New ACCORD')
                      ],
                    ),
                  ),
                ]),
              ],
            ),
          )),
    );
  }
}

class ButtonNamaKelompok extends StatelessWidget {
  const ButtonNamaKelompok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle_rounded),
      onPressed: () {
        // icon account di tap
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Nama Kelompok'),
            content: const Text(
                'Amirah Dzatul Himmah (amirahdzh@upi.edu) ; Sarah Muhammad Abduh (sarah21@upi.edu)'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ButtonPerjanjian extends StatelessWidget {
  const ButtonPerjanjian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.access_alarm_rounded),
      onPressed: () {
        // icon setting ditap
        const snackBar = SnackBar(
          duration: Duration(seconds: 20),
          content: Text(
              'Kami berjanji  tidak akan berbuat curang dan atau membantu kelompok lain berbuat curang'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
