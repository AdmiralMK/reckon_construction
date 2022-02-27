import 'dart:io';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:intl/intl.dart';
import 'package:window_manager/window_manager.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

//import 'ishodmain.dart';

TextEditingController textFundShirina = TextEditingController();
TextEditingController textFundDlina = TextEditingController();
TextEditingController textFundVisota = TextEditingController();
TextEditingController textFundProhod = TextEditingController();

String defFundShirina = "2.5";
String defFundDlina = "6";
String defFundVisota = "3.5";
String defFundProhod = "0.6";

class Drawer5 extends StatefulWidget {
  const Drawer5({Key key}) : super(key: key);

  @override
  State<Drawer5> createState() => _Drawer5State();
}

class TextBoxFundProhod21 extends StatelessWidget {
  const TextBoxFundProhod21({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      autofocus: true,

      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9,.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            var text = newValue.text;
            text = text.replaceAll(",", ".");
            if (text.isNotEmpty) num.parse(text);
            return newValue;
            // ignore: empty_catches
          } catch (e) {}
          return oldValue;
        }),
      ],

      controller: textFundProhod,

      onChanged: (value) {
        //_setNumberPref(int.parse(value));
        //_fundShirina = num.parse(value);
      },

      //validator: _validateName,

      decoration: InputDecoration(
        isCollapsed: true,
        contentPadding: const EdgeInsets.all(15),
        border: const OutlineInputBorder(),
        //icon: Icon(Icons.crop_portrait),
        labelText: 'Ширина прохода в свету ',
        hintText: 'Введите ширину прохода в свету.',
        prefixText: 'S=',
        suffixText: 'м',
        suffixStyle: const TextStyle(color: Colors.grey),
        suffixIcon: IconButton(
          icon: const Icon(Icons.help),
          iconSize: 20,
          onPressed: () {
            AwesomeDialog(
              context: context,
              animType: AnimType.SCALE,
              dialogType: DialogType.INFO_REVERSED,
              body: Center(
                child: Column(
                  children: [
                    const SelectableText('Выдержка из СНиП 12-04-2002:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          shadows: [
                            Shadow(
                              color: Colors.grey,
                              offset: Offset(2, 2),
                              blurRadius: 10,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            //spreadRadius: 3,
                            blurRadius: 5,
                            offset: const Offset(
                                5, 5), // changes position of shadow
                          ),
                        ],
                        border: Border.all(width: 1),
                        image: const DecorationImage(
                          image:
                              AssetImage("assets/images/staraya-bumaga-34.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(10.0),
                      child: const SelectableText(
                        '5.2.1. При размещении рабочих мест в выемках их размеры, принимаемые в проекте, должны обеспечивать размещение конструкций, оборудования, оснастки, а также проходы на рабочих местах и к рабочим местам шириной в свету не менее 0,6 м, а на рабочих местах - также необходимое пространство в зоне работ.',
                        style: TextStyle(
                          //fontStyle: FontStyle.italic,
                          fontSize: 17,
                          color: Colors.black54,
                          fontFamily: "TrixieCyr-Plain",
                          shadows: [
                            Shadow(
                              color: Colors.grey,
                              offset: Offset(0, 0),
                              blurRadius: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    const Center(
                      child: Text(
                          'Установить нормативное значение прохода в свету равным 0,6 м?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                color: Colors.grey,
                                offset: Offset(2, 2),
                                blurRadius: 10,
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              title: 'Информация',
              desc: 'Ознакомлен',
              btnCancelOnPress: () {},
              btnOkOnPress: () {
                textFundProhod.text = "0,6";
              },
            ).show();
          },
        ),
      ),
    );
  }

  AwesomeDialog dialoginfoprohod2(BuildContext context) {
    return AwesomeDialog(
      context: context,
      animType: AnimType.SCALE,
      dialogType: DialogType.INFO_REVERSED,
      body: Center(
        child: Column(
          children: [
            const SelectableText('Выдержка из СНиП 12-04-2002:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 10,
                    ),
                  ],
                )),
            const SizedBox(
              height: 10,
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    //spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(5, 5), // changes position of shadow
                  ),
                ],
                border: Border.all(width: 1),
                image: const DecorationImage(
                  image: AssetImage("assets/images/staraya-bumaga-34.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(10.0),
              child: const SelectableText(
                '5.2.1. При размещении рабочих мест в выемках их размеры, принимаемые в проекте, должны обеспечивать размещение конструкций, оборудования, оснастки, а также проходы на рабочих местах и к рабочим местам шириной в свету не менее 0,6 м, а на рабочих местах - также необходимое пространство в зоне работ.',
                style: TextStyle(
                  //fontStyle: FontStyle.italic,
                  fontSize: 17,
                  color: Colors.black54,
                  fontFamily: "TrixieCyr-Plain",
                  shadows: [
                    Shadow(
                      color: Colors.grey,
                      offset: Offset(0, 0),
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
              width: 10,
            ),
            const Text('Установить значение прохода равным 0,6 м?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 10,
                    ),
                  ],
                )),
          ],
        ),
      ),
      title: 'Информация',
      desc: 'Ознакомлен',
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    border: Border.all(
      width: 0.25,
      color: Colors.grey,
    ),

    //
    borderRadius: const BorderRadius.all(
        Radius.circular(5.0) //                 <--- border radius here
        ),
  );
}

class _Drawer5State extends State<Drawer5> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final Color primary = Colors.white;
  final Color active = Colors.grey.shade800;
  final Color divider = Colors.grey.shade600;

  void showAlertDialogOnOkCallback(String title, String msg,
      DialogType dialogType, BuildContext context, VoidCallback onOkPress) {
    AwesomeDialog(
      context: context,
      animType: AnimType.TOPSLIDE,
      dialogType: dialogType,
      title: title,
      desc: msg,
      btnOkIcon: Icons.check_circle,
      btnOkColor: Colors.green.shade900,
      btnOkOnPress: onOkPress,
    ).show();
  }

  _changeNameShirina() {
    setState(() => defFundShirina = textFundShirina.text);
    debugPrint("defFundShirina=$defFundShirina");
  }

  _changeNameDlina() {
    setState(() => defFundDlina = textFundDlina.text);
    debugPrint("defFundDlina=$defFundDlina");
  }

  _changeNameVisota() {
    setState(() => defFundVisota = textFundVisota.text);
    debugPrint("defFundVisota=$defFundVisota");
  }

  _changeNameProhod() {
    setState(() => defFundProhod = textFundProhod.text);
    debugPrint("defFundProhod=$defFundProhod");
  }

  @override
  void initState() {
    super.initState();
    textFundShirina.text = defFundShirina;
    textFundShirina.addListener(_changeNameShirina);

    textFundDlina.text = defFundDlina;
    textFundDlina.addListener(_changeNameDlina);

    textFundVisota.text = defFundVisota;
    textFundVisota.addListener(_changeNameVisota);

    textFundProhod.text = defFundProhod;
    textFundProhod.addListener(_changeNameProhod);
  }

  @override
  void dispose() {
    textFundShirina.dispose();
    super.dispose();
  }

   Size textSize;

  @override
  Widget build(BuildContext context) {
    final double picSizeWidth = MediaQuery.of(context).size.width - 14;
    final double picSizeHeight = picSizeWidth * 1.193516699410609;

    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: Colors.indigo.withOpacity(0.9),
        title: const Text('Расчёт объёмов земли'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.landscape),
          onPressed: () {
            _key.currentState?.openDrawer();
          },
        ),
      ),

      /// ----------------
      /// Building drawer here .
      /// ---------------
      drawer: _buildDrawer(),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 7),
              child: const TextBoxFundShirina(),
            ),
            const SizedBox(height: 10.0),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 7),
              child: const TextBoxFundDlina(),
            ),
            const SizedBox(height: 10.0),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 7),
              child: const TextBoxFundVisota(),
            ),
            const SizedBox(height: 10.0),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 7),
              child: const TextBoxFundProhod21(),
            ),
            const SizedBox(height: 10.0),
            Container(
              width: picSizeWidth,
              height: picSizeHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(5, 5),
                  ),
                ],
                //border: Border.all(width: 8),
                image: const DecorationImage(
                  image: AssetImage("assets/images/pits2.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(children: [
                Positioned(
                  left: picSizeWidth * 0.3,
                  right: picSizeWidth * 0.3,
                  top: picSizeHeight * 0.095,
                  child: Container(
                    alignment: Alignment.center,
                    color: const Color.fromARGB(85, 19, 21, 146),
                    //width: 50,
                    //height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      //maxLines: 1,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 114, 2, 2),
                          fontSize: 26.0),
                      decoration: const InputDecoration(
                        isCollapsed: true,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: picSizeWidth * 0.36,
                  right: picSizeWidth * 0.36,
                  top: picSizeHeight * 0.3,
                  child: Container(
                    alignment: Alignment.center,
                    //color: Color.fromARGB(0, 19, 21, 146),
                    //width: 50,
                    //height: 50,
                    child: Text(
                      "$defFundShirina м",
                      style: const TextStyle(
                          color: Color.fromARGB(255, 114, 2, 2),
                          fontSize: 20.0),
                    ),
                  ),
                ),
                Positioned(
                  left: picSizeWidth * 0.3,
                  right: picSizeWidth * 0.3,
                  top: picSizeHeight * 0.855,
                  child: Container(
                    alignment: Alignment.center,
                    color: const Color.fromARGB(85, 19, 21, 146),
                    //width: 50,
                    //height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      //maxLines: 1,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 85, 0, 0), fontSize: 26.0),
                      decoration: const InputDecoration(
                        isCollapsed: true,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  _buildDrawer() {
    const String image = 'assets/images/ryte-kotlovanov.jpg';
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color: primary,
              boxShadow: const [BoxShadow(color: Colors.black45)]),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      tooltip: "Закрыть программу",
                      icon: Icon(
                        Icons.power_settings_new,
                        color: active,
                      ),
                      onPressed: () async {
                        if (Platform.isWindows) {
                          await windowManager.setOpacity(0.2);
                          await windowManager.setAlwaysOnTop(true);
                        }
                        SystemChannels.platform
                            .invokeMethod('SystemNavigator.pop');
                      },
                    ),
                  ),
                  Container(
                    height: 90,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.orange, Colors.deepOrange])),
                    child: const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(image),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const Text(
                    "Расчёт объёмов земли",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "@AdmiralMK",
                    style: TextStyle(color: active, fontSize: 16.0),
                  ),
                  const SizedBox(height: 40.0),
                  _buildRow(Icons.home, "Расчёт объёмов земли"),
                  _buildDivider(),
                  _buildRow(Icons.person_pin, "Расчёт арматурной сетки"),
                  _buildDivider(),
                  _buildRow(Icons.message, "Сообщения", showBadge: true),
                  Visibility(
                    visible: Platform.isWindows,
                    child: IconButton(
                      icon: Icon(
                        Icons.power_settings_new,
                        color: active,
                      ),
                      onPressed: () async {
                        if (Platform.isWindows) {
                          await windowManager.setOpacity(1);
                          await windowManager.setAlwaysOnTop(false);
                          //await windowManager.setTitle("Расчёт объёмов земли");
                          await windowManager.setTitleBarStyle('show');
                        }
                      },
                    ),
                  ),
                  _buildDivider(),
                  _buildRow(Icons.notifications, "События", showBadge: true),
                  _buildDivider(),
                  _buildRow(Icons.settings, "Настройки"),
                  _buildDivider(),
                  _buildRow(Icons.email, "Контакты"),
                  _buildDivider(),
                  InkWell(
                    onTap: () {
                      DialogInfoProhod().show();
                    },
                    child: _buildRow(Icons.info_outline, "Справка"),
                  ),
                  _buildDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

// ignore: non_constant_identifier_names
  AwesomeDialog DialogInfoProhod() {
    return AwesomeDialog(
      context: context,
      animType: AnimType.SCALE,
      dialogType: DialogType.INFO_REVERSED,
      body: Center(
        child: Column(
          children: [
            const SelectableText('Выдержка из СНиП 12-04-2002:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 10,
                    ),
                  ],
                )),
            const SizedBox(
              height: 10,
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    //spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(5, 5), // changes position of shadow
                  ),
                ],
                border: Border.all(width: 1),
                image: const DecorationImage(
                  image: AssetImage("assets/images/staraya-bumaga-34.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(10.0),
              child: const SelectableText(
                '5.2.1. При размещении рабочих мест в выемках их размеры, принимаемые в проекте, должны обеспечивать размещение конструкций, оборудования, оснастки, а также проходы на рабочих местах и к рабочим местам шириной в свету не менее 0,6 м, а на рабочих местах - также необходимое пространство в зоне работ.',
                style: TextStyle(
                  //fontStyle: FontStyle.italic,
                  fontSize: 17,
                  color: Colors.black54,
                  fontFamily: "TrixieCyr-Plain",
                  shadows: [
                    Shadow(
                      color: Colors.grey,
                      offset: Offset(0, 0),
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
              width: 10,
            ),
            const Text('Установить значение прохода равным 0,6 м?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 10,
                    ),
                  ],
                )),
          ],
        ),
      ),
      title: 'Информация',
      desc: 'Ознакомлен',
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: divider,
    );
  }

  Widget _buildRow(IconData icon, String title, {bool showBadge = false}) {
    final TextStyle tStyle = TextStyle(color: active, fontSize: 16.0);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: active,
          ),
          const SizedBox(width: 10.0),
          Text(
            title,
            style: tStyle,
          ),
          const Spacer(),
          if (showBadge)
            Material(
              color: Colors.deepOrange,
              elevation: 5.0,
              shadowColor: Colors.red,
              borderRadius: BorderRadius.circular(5.0),
              child: Container(
                width: 25,
                height: 25,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: const Text(
                  "5",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class TextBoxFundShirina extends StatefulWidget {
  const TextBoxFundShirina({key}) : super(key: key);
  @override
  _TextBoxFundShirina createState() => _TextBoxFundShirina();
}

class _TextBoxFundShirina extends State<TextBoxFundShirina> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      autofocus: true,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9,.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            var text = newValue.text;
            text = text.replaceAll(",", ".");
            if (text.isNotEmpty) num.parse(text);
            if (text.replaceAll(".", "").length > 10) num.parse("text");
            if ((!text.contains(".")) &
                (text.length > 1) &
                (double.parse("0$text") == 0)) {
              num.parse("textTTT");
            }
            if (double.parse("0$text") > 9999.9999) num.parse("text");
            return newValue;
            // ignore: empty_catches
          } catch (e) {}
          return oldValue;
        }),
      ],

      controller: textFundShirina,

      onChanged: (value) {
        //_setNumberPref(int.parse(value));
        //_fundShirina = num.parse(value);
      },

      //validator: _validateName,

      decoration: InputDecoration(
        isCollapsed: true,
        contentPadding: const EdgeInsets.all(15),
        border: const OutlineInputBorder(),
        //icon: Icon(Icons.crop_portrait),
        labelText: 'Ширина фундамента $defFundShirina' +
            (defFundShirina == "" ? "" : " м"),
        hintText: 'Введите ширину фундамента или подготовки.',
        prefixText: 'B=',
        suffixText: 'м',
        suffixStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}

class TextBoxFundDlina extends StatelessWidget {
  const TextBoxFundDlina({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      autofocus: true,

      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9,.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            var text = newValue.text;
            text = text.replaceAll(",", ".");
            if (text.isNotEmpty) num.parse(text);
            return newValue;
            // ignore: empty_catches
          } catch (e) {}
          return oldValue;
        }),
      ],

      controller: textFundDlina,

      onChanged: (value) {
        //_setNumberPref(int.parse(value));
        //_fundShirina = num.parse(value);
      },

      //validator: _validateName,

      decoration: const InputDecoration(
        isCollapsed: true,
        contentPadding: EdgeInsets.all(15),
        border: OutlineInputBorder(),
        //icon: Icon(Icons.crop_portrait),
        labelText: 'Длина фундамента',
        hintText: 'Введите длину фундамента или подготовки.',
        prefixText: 'L=',
        suffixText: 'м',
        suffixStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}

class TextBoxFundVisota extends StatelessWidget {
  const TextBoxFundVisota({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      autofocus: true,

      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9,.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            var text = newValue.text;
            text = text.replaceAll(",", ".");
            if (text.isNotEmpty) num.parse(text);
            return newValue;
            // ignore: empty_catches
          } catch (e) {}
          return oldValue;
        }),
      ],

      controller: textFundVisota,

      onChanged: (value) {
        //_setNumberPref(int.parse(value));
        //_fundShirina = num.parse(value);
      },

      //validator: _validateName,

      decoration: const InputDecoration(
        isCollapsed: true,
        contentPadding: EdgeInsets.all(15),
        border: OutlineInputBorder(),
        //icon: Icon(Icons.crop_portrait),
        labelText: 'Глубина котлована',
        hintText: 'Введите глубину котлована.',
        prefixText: 'H=',
        suffixText: 'м',
        suffixStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}

class OvalRightBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 40, 0);
    path.quadraticBezierTo(
        size.width, size.height / 4, size.width, size.height / 2);
    path.quadraticBezierTo(size.width, size.height - (size.height / 4),
        size.width - 40, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
