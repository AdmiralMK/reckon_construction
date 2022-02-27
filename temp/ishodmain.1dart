// ignore_for_file: avoid_unnecessary_containers

//import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io' show Platform;

//import 'package:lottie/lottie.dart';

Platform os = Platform();

final List<String> imgList = [
  'assets/images/0 - Насыпной.jpg',
  'assets/images/1 - Песок.jpg',
  'assets/images/2 - Супесь.jpg',
  'assets/images/3 - Суглинок.jpg',
  'assets/images/4 - Глина.jpg',
  'assets/images/5 - Лессовые.jpg',
  //'assets/images/6 - Стандартный.jpg',
  //'assets/images/7 - Через угол.jpg',
  //'assets/images/8 - Через отношение.jpg'
];

// ignore: non_constant_identifier_names
final List<String> ListName = [
  'Насыпной не слежавшейся',
  'Песчаный',
  'Супесь',
  'Суглинок',
  'Глина',
  'Лессовые',
  //"Стандартные откосы",
  //"Через угол",
  //"Через отношение"
];

// ignore: non_constant_identifier_names
TextEditingController text_fundShirina = TextEditingController();
TextEditingController text_fundDlina = TextEditingController();
TextEditingController text_fundVisota = TextEditingController();
TextEditingController text_fundProhod = TextEditingController();

void main() => runApp(const CarouselDemo());

final themeMode = ValueNotifier(2);

class CarouselDemo extends StatelessWidget {
  const CarouselDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //surfaceColor = Theme.of(context).colorScheme.surface;
    //surfaceColor = Colors.cyan;
    return ValueListenableBuilder(
      builder: (context, value, g) {
        return MaterialApp(
          initialRoute: '/',
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.values.toList()[value as int],

          //themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (ctx) => const CarouselDemoHome(),
            //'/basic': (ctx) => const BasicDemo(),
            //'/nocenter': (ctx) => NoCenterDemo(),
            //'/image': (ctx) => ImageSliderDemo(),
            //'/complicated': (ctx) => ComplicatedImageDemo(),
            //'/enlarge': (ctx) => const EnlargeStrategyDemo(),
            '/manual': (ctx) => const ManuallyControlledSlider(),
            //'/noloop': (ctx) => const NoonLoopingDemo(),
            //'/vertical': (ctx) => const VerticalSliderDemo(),
            //'/fullscreen': (ctx) => const FullscreenSliderDemo(),
            //'/ondemand': (ctx) => const OnDemandCarouselDemo(),
            //'/indicator': (ctx) => const CarouselWithIndicatorDemo(),
            //'/prefetch': (ctx) => const PrefetchImageDemo(),
            //'/reason': (ctx) => CarouselChangeReasonDemo(),
            //'/position': (ctx) => KeepPageviewPositionDemo(),
            //'/multiple': (ctx) => MultipleItemDemo(),
          },
        );
      },
      valueListenable: themeMode,
    );
  }

  ValueNotifier<int> get themeChange => themeMode;
}

class DemoItem extends StatelessWidget {
  final String title;
  final String route;
  const DemoItem(this.title, this.route, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}

class CarouselDemoHome extends StatelessWidget {
  const CarouselDemoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Строительство'),
        actions: [
          IconButton(
              icon: const Icon(Icons.nightlight_round),
              onPressed: () {
                print(themeMode.value);
                print(ThemeMode.values.toList());
                //themeMode.value = 1;
                themeMode.value = themeMode.value == 1 ? 2 : 1;
              })
        ],
      ),
      body: ListView(
        children: const <Widget>[
          //DemoItem('Basic demo', '/basic'),
          //DemoItem('No center mode demo', '/nocenter'),
          //DemoItem('Image carousel slider', '/image'),
          //DemoItem('More complicated image slider', '/complicated'),
          //DemoItem('Enlarge strategy demo slider', '/enlarge'),
          DemoItem('Расчет объема землянных работ', '/manual'),
          //DemoItem('Noon-looping carousel slider', '/noloop'),
          //DemoItem('Vertical carousel slider', '/vertical'),
          // DemoItem('Fullscreen carousel slider', '/fullscreen'),
          // DemoItem('Carousel with indicator controller demo', '/indicator'),
          //DemoItem('On-demand carousel slider', '/ondemand'),
          //DemoItem('Image carousel slider with prefetch demo', '/prefetch'),
          //DemoItem('Carousel change reason demo', '/reason'),
          //DemoItem('Keep pageview position demo', '/position'),
          //DemoItem('Multiple item in one screen demo', '/multiple'),
        ],
      ),
    );
  }
}

class MyDropDown extends StatefulWidget {
  const MyDropDown({
    // ignore: non_constant_identifier_names
    Key? UniqueKey,
  }) : super(key: UniqueKey);

  @override
  _MyDropDownState createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String selected = "1 : 1";

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selected,

      //borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      //style: const TextStyle(fontSize: 18),
      //isDense: true,
      decoration: const InputDecoration(
        border: InputBorder.none,
        //prefixText: 'Откос ',
        contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      ),
      icon: const Icon(Icons.arrow_drop_down_circle),
      elevation: 8,
      iconSize: 30.0,
      //focusColor: const Color.fromARGB(0, 158, 158, 158),
      alignment: AlignmentDirectional.center,
      //iconEnabledColor: Theme.of(context).colorScheme.secondary,
      //dropdownColor: Theme.of(context).colorScheme.surface,
      isExpanded: true,
      items: [
        "1 : 0",
        "1 : 0,25",
        "1 : 0,5",
        "1 : 0,67",
        "1 : 0,75",
        "1 : 0,85",
        "1 : 1",
        "1 : 1,25"
      ]
          .map((label) => DropdownMenuItem(
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: true,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                value: label,
              ))
          .toList(),
      onChanged: (value) {
        setState(() => selected = value!);
      },
    );
  }
}

List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      item,
                      fit: BoxFit.cover,
                      width: 2000,
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(223, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 00.0),
                        child: Column(
                          children: [
                            //Text(ListName.elementAt(imgList.indexOf(item))),

                            Visibility(
                              visible:
                                  imgList.indexOf(item) == 6 ? true : false,
                              // ignore: sized_box_for_whitespace
                              child: const NewWidget(),
                            ),

                            Visibility(
                              visible:
                                  imgList.indexOf(item) == 7 ? true : false,
                              child: Container(
                                //height: 50.0,

                                child: Text(
                                    ListName.elementAt(imgList.indexOf(item))),
                              ),
                            ),

                            Visibility(
                              visible:
                                  imgList.indexOf(item) == 8 ? true : false,
                              child: Container(
                                //height: 50.0,
                                child: Text(
                                    ListName.elementAt(imgList.indexOf(item))),
                              ),
                            ),

                            Text(
                              //'No. ${imgList.indexOf(item)} image',
                              ListName.elementAt(imgList.indexOf(item)),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            //Text(ListName.elementAt(imgList.indexOf(item))),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class NewWidget extends StatefulWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 50.0,
      width: 150,
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface.withAlpha(230),
          borderRadius: BorderRadius.circular(20)),
      //padding: const EdgeInsets.symmetric(
      //    vertical: 0.0, horizontal: 40.0),
      child: const MyDropDown(),
    );
  }
}

/*
class BasicDemo extends StatelessWidget {
  const BasicDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(title: const Text('Basic demo')),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(),
        items: list
            .map((item) => Container(
                  child: Center(child: Text(item.toString())),
                  color: Colors.green,
                ))
            .toList(),
      )),
    );
  }
}

class NoCenterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(
      appBar: AppBar(title: const Text('Basic demo')),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(
          disableCenter: true,
        ),
        items: list
            .map((item) => Container(
                  child: Text(item.toString()),
                  color: Colors.green,
                ))
            .toList(),
      )),
    );
  }
}

class ImageSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image slider demo')),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(),
        items: imgList
            .map((item) => Container(
                  child: Center(
                      child:
                          //Image.asset("assets/images/0 - Насыпной.jpg")),
                          Image.asset(item, fit: BoxFit.cover, width: 1000)),
                          //Image.network(item, fit: BoxFit.cover, width: 1000)),
                          //.asset("assets/images/forest.png")
                ))
            .toList(),
      )),
    );
  }
}

class ComplicatedImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Complicated image slider demo')),
      body: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imageSliders,
      ),
    );
  }
}

class EnlargeStrategyDemo extends StatelessWidget {
  const EnlargeStrategyDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Complicated image slider demo')),
      body: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
          ),
          items: imageSliders,
        ),
      ),
    );
  }
}

*/

class ManuallyControlledSlider extends StatefulWidget {
  const ManuallyControlledSlider({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderState();
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

class _ManuallyControlledSliderState extends State<ManuallyControlledSlider> {
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Расчет объема землянных работ')),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 15.0),
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
                child: const TextBoxFundProhod(),
              ),

              const SizedBox(height: 2.0),
              Container(
                //height: 200,
                margin: const EdgeInsets.all(6.0),
                padding: const EdgeInsets.all(0.0),
                decoration: myBoxDecoration(),
                child: wgCarouselSlider(controller: _controller),
              ),
              //const Text('Низ'),
              //Lottie.asset('assets/images/construction.json'),
            ],
          ),
        ));
  }
}

// ignore: camel_case_types
class wgCarouselSlider extends StatelessWidget {
  const wgCarouselSlider({
    Key? key,
    required CarouselController controller,
  })  : _controller = controller,
        super(key: key);

  final CarouselController _controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Visibility(
          visible: !Platform.isAndroid,
          // ignore: sized_box_for_whitespace
          child: GestureDetector(
            onTap: () {
              _controller.previousPage();
            },
            child: const ClipRRect(
              // borderRadius: BorderRadius.circular(100),
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 45,
              ),
            ),
          ),
        ),

        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          width: MediaQuery.of(context).size.width -
              (!Platform.isAndroid ? 108 : 20),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: CarouselSlider(
                    items: imageSliders,
                    options:
                        CarouselOptions(enlargeCenterPage: true, height: 100),
                    carouselController: _controller,
                  ),
                ),

                /*
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: ElevatedButton(
                        onPressed: () => _controller.previousPage(),
                        child: const Text('←'),
                      ),
                    ),
                    Flexible(
                      child: ElevatedButton(
                        onPressed: () => _controller.nextPage(),
                        child: const Text('→'),
                      ),
                    ),
                    ...Iterable<int>.generate(imgList.length).map(
                      (int pageIndex) => Flexible(
                        child: ElevatedButton(
                          onPressed: () =>
                              _controller.animateToPage(pageIndex),
                          child: Text("$pageIndex"),
                        ),
                      ),
                    ),
                  ],
                )
*/
              ],
            ),
          ),
        ),
        // ignore: sized_box_for_whitespace

        Visibility(
          visible: !Platform.isAndroid,
          // ignore: sized_box_for_whitespace
          child: GestureDetector(
            onTap: () {
              _controller.nextPage();
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Icon(
                Icons.arrow_forward_ios,
                size: 45,
              ),
            ),
          ),
        ),
/*
        Container(
          width: 40,
          //color: Colors.blue,
          child: Center(
            child: Ink(
              decoration: const ShapeDecoration(
                //color: Colors.lightBlue,
                shape: CircleBorder(),
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                iconSize: 25,

                //splashRadius: 10,
                hoverColor: const Color.fromARGB(0, 255, 255, 255),
                onPressed: () {
                  _controller.nextPage();
                },
              ),
            ),
          ),
        ),
        */
      ],
    );
  }
}

class TextBoxFundShirina extends StatelessWidget {
  const TextBoxFundShirina({
    Key? key,
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

      controller: text_fundShirina,

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
        labelText: 'Ширина фундамента',
        hintText: 'Введите ширину фундамента или подготовки.',
        prefixText: 'B=',
        suffixText: 'м',
        suffixStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}

class TextBoxFundDlina extends StatelessWidget {
  const TextBoxFundDlina({
    Key? key,
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

      controller: text_fundDlina,

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
    Key? key,
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

      controller: text_fundVisota,

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

class TextBoxFundProhod extends StatelessWidget {
  const TextBoxFundProhod({
    Key? key,
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

      controller: text_fundProhod,

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
            //DialogInfoProhod().show();
          },
        ),
      ),
    );
  }
}




/*

class NoonLoopingDemo extends StatelessWidget {
  const NoonLoopingDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Noon-looping carousel demo')),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          initialPage: 2,
          autoPlay: true,
        ),
        items: imageSliders,
      )),
    );
  }
}

class VerticalSliderDemo extends StatelessWidget {
  const VerticalSliderDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vertical sliding carousel demo')),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          scrollDirection: Axis.vertical,
          autoPlay: true,
        ),
        items: imageSliders,
      )),
    );
  }
}

class FullscreenSliderDemo extends StatelessWidget {
  const FullscreenSliderDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fullscreen sliding carousel demo')),
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              // autoPlay: false,
            ),
            items: imgList
                .map((item) => Container(
                      child: Center(
                          child: 
                          //Image.network(item, fit: BoxFit.cover, height: height,)),
                          Image.asset(item, fit: BoxFit.cover,  height: height,
                      )),

                    ))
                .toList(),
          );
        },
      ),
    );
  }
}

class OnDemandCarouselDemo extends StatelessWidget {
  const OnDemandCarouselDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('On-demand carousel demo')),
      body: Container(
          child: CarouselSlider.builder(
        itemCount: 100,
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          autoPlay: true,
        ),
        itemBuilder: (ctx, index, realIdx) {
          return Container(
            child: Text(index.toString()),
          );
        },
      )),
    );
  }
}

class CarouselWithIndicatorDemo extends StatefulWidget {
  const CarouselWithIndicatorDemo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carousel with indicator controller demo')),
      body: Column(children: [
        Expanded(
          child: CarouselSlider(
            items: imageSliders,
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}

class PrefetchImageDemo extends StatefulWidget {
  const PrefetchImageDemo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PrefetchImageDemoState();
  }
}


class _PrefetchImageDemoState extends State<PrefetchImageDemo> {
  final List<String> images = [
    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
    'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
    'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  ];


  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      images.forEach((imageUrl) {
        //precacheImage(NetworkImage(imageUrl), context);
        //precacheImage(Image.asset(imageUrl), context);
        //Image.asset(item, fit: BoxFit.cover, width: 1000)
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prefetch image slider demo')),
      body: Container(
          child: CarouselSlider.builder(
        itemCount: images.length,
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        itemBuilder: (context, index, realIdx) {
          return Container(
            child: Center(
                child: 
                //Image.network(images[index],fit: BoxFit.cover, width: 1000)),
                Image.asset(images[index], fit: BoxFit.cover, width: 1000)),
          );
        },
      )),
    );
  }
}

*/

/*
class CarouselChangeReasonDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselChangeReasonDemoState();
  }
}

class _CarouselChangeReasonDemoState extends State<CarouselChangeReasonDemo> {
  String reason = '';
  final CarouselController _controller = CarouselController();

  void onPageChange(int index, CarouselPageChangedReason changeReason) {
    setState(() {
      reason = changeReason.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Change reason demo')),
        body: Column(
          children: <Widget>[
            Expanded(
              child: CarouselSlider(
                items: imageSliders,
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  onPageChanged: onPageChange,
                  autoPlay: true,
                ),
                carouselController: _controller,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: ElevatedButton(
                    onPressed: () => _controller.previousPage(),
                    child: const Text('←'),
                  ),
                ),
                Flexible(
                  child: ElevatedButton(
                    onPressed: () => _controller.nextPage(),
                    child: const Text('→'),
                  ),
                ),
                ...Iterable<int>.generate(imgList.length).map(
                  (int pageIndex) => Flexible(
                    child: ElevatedButton(
                      onPressed: () => _controller.animateToPage(pageIndex),
                      child: Text("$pageIndex"),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                children: [
                  const Text('page change reason: '),
                  Text(reason),
                ],
              ),
            )
          ],
        ));
  }
}

class KeepPageviewPositionDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Keep pageview position demo')),
      body: ListView.builder(itemBuilder: (ctx, index) {
        if (index == 3) {
          return Container(
              child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              pageViewKey: const PageStorageKey<String>('carousel_slider'),
            ),
            items: imageSliders,
          ));
        } else {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            color: Colors.blue,
            height: 200,
            child: const Center(
              child: Text('other content'),
            ),
          );
        }
      }),
    );
  }
}

class MultipleItemDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Multiple item in one slide demo')),
      body: Container(
          child: CarouselSlider.builder(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: false,
          viewportFraction: 1,
        ),
        itemCount: (imgList.length / 2).round(),
        itemBuilder: (context, index, realIdx) {
          final int first = index * 2;
          final int second = first + 1;
          return Row(
            children: [first, second].map((idx) {
              return Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: 
                  //Image.network(imgList[idx], fit: BoxFit.cover),
                  Image.asset(imgList[idx], fit: BoxFit.cover),

                ),
              );
            }).toList(),
          );
        },
      )),
    );
  }
}

*/
