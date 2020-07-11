import 'package:cambio_dia/route_generator.dart';
import 'package:cambio_dia/screens/moeda_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bottom_nav/bottom_nav.dart';
import 'package:cambio_dia/styles/main_screen_btn.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'animations/moeda_detail_animation.dart';

/*
Adicionar imagens de cada banco  no dropDown
*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> labels = ["Banco Central", "Banca Comercial"];
  int selectedTabIndex = 0;
  int currentTab = 0;

  List<String> _moedas = [
    'EUR',
    'ZAR',
    'GBP',
    'USD',
    'NAD',
  ];

  String getFlagAbbr(String valor) {
    String flagAbbr;
    if (valor == "ZAR") {
      flagAbbr = "za";
    } else if (valor == "USD") {
      flagAbbr = "us";
    } else if (valor == "EUR") {
      flagAbbr = "eu";
    } else if (valor == "GBP") {
      flagAbbr = "gb";
    } else if (valor == "NAD") {
      flagAbbr = "na";
    }

    return flagAbbr;
  }

  List<Banco> bancos = [
    Banco(
        nome: "Banco de Fomento Angola (BFA)",
        url: "https://images.unsplash.com/photo-1555952517-2e8e729e0b44"),
    Banco(
        nome: "Banco BIC (BIC)",
        url: "https://images.unsplash.com/photo-1555952517-2e8e729e0b44"),
    Banco(
        nome: "Banco Comércio e Indústria (BCI)",
        url: "https://images.unsplash.com/photo-1555952517-2e8e729e0b44"),
  ];

  Banco selectedBanco;

  @override
  void initState() {
    selectedBanco = bancos.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: FlatButton(
          onPressed: null,
          child: Icon(
            Ionicons.md_person,
            color: Colors.black54,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Ionicons.ios_notifications,
              size: 25.0,
              color: Colors.black54,
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: 230.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 3.5,
                          blurRadius: 10,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 2.5,
                                      blurRadius: 10,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ],
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: GradientColors.mojito,
                                    stops: [0.2, 0.8],
                                  ),
                                ),
                                child: Icon(
                                  FontAwesome.dollar,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Dólar",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 5.0),
                                child: Text(
                                  "765.00 kz",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "2.0 %",
                                    style: TextStyle(color: Colors.lightGreen),
                                  ),
                                  Icon(
                                    Ionicons.ios_trending_up,
                                    color: Colors.lightGreen,
                                    size: 16.0,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(20.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 2.5,
                                      blurRadius: 10,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ],
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: GradientColors.skyBlue,
                                    stops: [0.2, 0.8],
                                  ),
                                ),
                                child: Icon(
                                  FontAwesome.euro,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Euro",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 10.0, bottom: 5.0),
                                child: Text(
                                  "795.00 kz",
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "1.5 %",
                                    style: TextStyle(color: Colors.redAccent),
                                  ),
                                  Icon(
                                    Ionicons.ios_trending_down,
                                    color: Colors.redAccent,
                                    size: 16.0,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(right: 20.0, bottom: 15.0),
                    child: Text(
                      "fonte: Kinguila Hoje",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.teal[50],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 2.5,
                        blurRadius: 8,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.only(top: 8.0, bottom: 20.0),
                      height: 4.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTabIndex = 0;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            decoration: (selectedTabIndex == 0)
                                ? kSelectedBancoBtnTypeDecoration
                                : kBancoBtnTypeDecoration,
                            child: Text(
                              "Banco Central",
                              style: TextStyle(
                                color: (selectedTabIndex == 0)
                                    ? Colors.white
                                    : Colors.lightBlue,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTabIndex = 1;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            decoration: (selectedTabIndex == 1)
                                ? kSelectedBancoBtnTypeDecoration
                                : kBancoBtnTypeDecoration,
                            child: Text(
                              "Banca Comercial",
                              style: TextStyle(
                                color: (selectedTabIndex == 1)
                                    ? Colors.white
                                    : Colors.lightBlue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      height: MediaQuery.of(context).size.height - 240,
                      child: (selectedTabIndex == 0)
                          ? ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: _moedas.length,
                              itemBuilder: (context, position) {
                                return Card(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              height: 30.0,
                                              width: 30.0,
                                              margin:
                                                  EdgeInsets.only(bottom: 5.0),
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'icons/flags/png/${getFlagAbbr(_moedas[position])}.png',
                                                      package: 'country_icons'),
                                                  fit: BoxFit.cover,
                                                ),
                                                color: Colors.yellowAccent,
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 2.5,
                                                    blurRadius: 10,
                                                    offset: Offset(0, 2),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              _moedas[position],
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text("Compra"),
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                            Text("120.1 kz"),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text("Venda"),
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                            Text("120.1 kz"),
                                          ],
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            gradient: LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors:
                                                  GradientColors.beautifulGreen,
                                              stops: [0.2, 0.8],
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.2),
                                                spreadRadius: 4.5,
                                                blurRadius: 9,
                                                offset: Offset(0, 1),
                                              ),
                                            ],
                                          ),
                                          child: Icon(
                                            Ionicons.ios_trending_up,
                                            color: Colors.white,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                EnterExitRoute(
                                                  exitPage: this.widget,
                                                  enterPage: MoedaDetail(
                                                    moedaNome:
                                                        _moedas[position],
                                                  ),
                                                ));
                                          },
                                          child:
                                              Icon(Ionicons.ios_arrow_forward),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            )
                          : CustomScrollView(
                              physics: BouncingScrollPhysics(),
                              slivers: <Widget>[
                                SliverList(
                                  delegate: SliverChildListDelegate(
                                    [
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: 0.0,
                                          left: 15.0,
                                          right: 10.0,
                                          bottom: 0.0,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30.0)),
                                          color: Colors.white,
                                        ),
                                        child: DropDown<Banco>(
                                          items: bancos,
                                          initialValue: selectedBanco,
                                          onChanged: (Banco p) {
                                            setState(() {
                                              selectedBanco = p;
                                            });
                                          },
                                          isCleared: selectedBanco == null,
                                          customWidgets: bancos
                                              .map((p) => buildDropDownRow(p))
                                              .toList(),
                                          isExpanded: true,
                                        ),
                                      ),
                                      ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: _moedas.length,
                                        itemBuilder: (context, position) {
                                          return Card(
                                            color: Colors.white,
                                            child: Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Container(
                                                        height: 30.0,
                                                        width: 30.0,
                                                        margin: EdgeInsets.only(
                                                            bottom: 5.0),
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                                'icons/flags/png/${getFlagAbbr(_moedas[position])}.png',
                                                                package:
                                                                    'country_icons'),
                                                            fit: BoxFit.cover,
                                                          ),
                                                          color: Colors
                                                              .yellowAccent,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      0.5),
                                                              spreadRadius: 2.5,
                                                              blurRadius: 10,
                                                              offset:
                                                                  Offset(0, 2),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Text(
                                                        _moedas[position],
                                                        style: TextStyle(
                                                          fontSize: 12.0,
                                                          color: Colors.black87,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text("Compra"),
                                                      SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      Text("120.1 kz"),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text("Venda"),
                                                      SizedBox(
                                                        height: 10.0,
                                                      ),
                                                      Text("120.1 kz"),
                                                    ],
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.all(10.0),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      gradient: LinearGradient(
                                                        begin: Alignment
                                                            .centerLeft,
                                                        end: Alignment
                                                            .centerRight,
                                                        colors: GradientColors
                                                            .beautifulGreen,
                                                        stops: [0.2, 0.8],
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.2),
                                                          spreadRadius: 4.5,
                                                          blurRadius: 9,
                                                          offset: Offset(0, 1),
                                                        ),
                                                      ],
                                                    ),
                                                    child: Icon(
                                                      Ionicons.ios_trending_up,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          EnterExitRoute(
                                                            exitPage:
                                                                this.widget,
                                                            enterPage:
                                                                MoedaDetail(
                                                              moedaNome:
                                                                  _moedas[
                                                                      position],
                                                            ),
                                                          ));
                                                    },
                                                    child: Icon(Ionicons
                                                        .ios_arrow_forward),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(
        index: currentTab,
        backgroundColor: Colors.white,
        showElevation: true,
        navBarHeight: 65.0,
        radius: 30.0,
        onTap: (i) {
          setState(() {
            currentTab = i;
          });
        },
        items: [
          BottomNavItem(
              icon: Ionicons.md_home,
              label: "Ínicio",
              selectedColor: Colors.amber),
          BottomNavItem(
              icon: Ionicons.ios_stats,
              label: "Chart",
              selectedColor: Colors.pink),
          BottomNavItem(
              icon: Icons.swap_horiz,
              label: "Conversor",
              selectedColor: Colors.blue),
          BottomNavItem(
              icon: Ionicons.md_settings,
              label: "Definições",
              selectedColor: Colors.black),
        ],
      ),
    );
  }
}

Row buildDropDownRow(Banco banco) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      CircleAvatar(
        backgroundImage: NetworkImage(banco.url),
      ),
      Text(banco?.nome ?? "Selecione o Banco"),
    ],
  );
}

class Banco {
  final String nome;
  final String url;

  Banco({this.nome, this.url});
}
