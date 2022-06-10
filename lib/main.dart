import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homework of layout widgets',
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Weather Forecast'),
            centerTitle: true,
            //shadowColor: Colors.none,
            elevation: 0,
            backgroundColor: const Color.fromARGB(255, 0, 140, 255)),
        body: Container(
          child: const BuildBody(),
          color: const Color.fromARGB(255, 0, 140, 255),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

class BuildBody extends StatelessWidget {
  const BuildBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Padding(
        padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
        child: TextField(
          decoration: InputDecoration(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            border: InputBorder.none,
            labelText: 'Enter City Name',
            labelStyle: TextStyle(color: Colors.white),
          ),
        ),
      ),
      _cityDetail(),
      _temperatureDetail(),
      _extraWeatherDetail(),
      const Text('7-DAY WEATHER FORECAST',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w300,
              fontFamily: 'Candara')),
      _bottomDetail(),
    ]);
  }
}

Column _cityDetail() {
  return Column(children: const <Widget>[
    Text('Kirovskaya Oblast, RU',
        style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.w300,
            fontFamily: 'Candara')),
    SizedBox(height: 10.0),
    Text('Friday, Jun 10, 2022',
        style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w400,
            fontFamily: 'Candara')),
  ]);
}

Container _temperatureDetail() {
  return Container(
    //alignment: Alignment.center,
    margin: const EdgeInsets.only(top: 50.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.wb_sunny, color: Colors.white, size: 70.0),
        const SizedBox(width: 20.0),
        Column(
          children: const <Widget>[
            Text('+21 ℃',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 55,
                    fontWeight: FontWeight.w200,
                    fontFamily: 'Candara')),
            Text('CLEARLY',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Candara')),
          ],
        )
      ],
    ),
  );
}

Container _extraWeatherDetail() {
  return Container(
    margin: const EdgeInsets.only(top: 45.0, bottom: 45.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      //textDirection: TextDirection.,
      children: [
        Column(
          children: const <Widget>[
            Icon(Icons.arrow_circle_right_outlined,
                color: Colors.white, size: 30.0),
            Text('5-10',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Candara')),
            Text('Wind, m/sec',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Candara')),
          ],
        ),
        Column(
          children: const <Widget>[
            Icon(Icons.water_drop_outlined, color: Colors.white, size: 30.0),
            Text('0',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Candara')),
            Text('Rainfall, mm',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Candara')),
          ],
        ),
        Column(
          children: const <Widget>[
            Icon(Icons.check_circle_outline, color: Colors.white, size: 30.0),
            Text('Ok',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Candara')),
            Text('Dry road',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Candara')),
          ],
        ),
      ],
    ),
  );
}

Expanded _bottomDetail() {
  return Expanded(
    child: ListView(
      padding: const EdgeInsets.all(8.0),
      scrollDirection: Axis.horizontal,
      itemExtent: 150,
      children: [
        Container(
          color: const Color.fromARGB(255, 60, 167, 255),
          margin: const EdgeInsets.only(left: 5, right: 5, bottom: 90, top: 5),
          padding: const EdgeInsets.only(top: 7),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Friday',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Candara')),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text('+21 ℃',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Candara')),
                    SizedBox(
                      width: 7.0,
                    ),
                    Icon(Icons.wb_sunny, color: Colors.white, size: 30.0),
                  ])
            ],
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 60, 167, 255),
          margin: const EdgeInsets.only(right: 5, bottom: 90, top: 5),
          padding: const EdgeInsets.only(top: 7),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Saturday',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Candara')),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text('+19 ℃',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Candara')),
                    SizedBox(
                      width: 7.0,
                    ),
                    Icon(Icons.wb_cloudy, color: Colors.white, size: 30.0),
                  ])
            ],
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 60, 167, 255),
          margin: const EdgeInsets.only(right: 5, bottom: 90, top: 5),
          padding: const EdgeInsets.only(top: 7),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Sunday',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Candara')),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text('+23 ℃',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Candara')),
                    SizedBox(
                      width: 7.0,
                    ),
                    Icon(Icons.wb_sunny, color: Colors.white, size: 30.0),
                  ])
            ],
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 60, 167, 255),
          margin: const EdgeInsets.only(right: 5, bottom: 90, top: 5),
          padding: const EdgeInsets.only(top: 7),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Monday',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Candara')),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text('+18 ℃',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Candara')),
                    SizedBox(
                      width: 7.0,
                    ),
                    Icon(Icons.wb_cloudy, color: Colors.white, size: 30.0),
                  ])
            ],
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 60, 167, 255),
          margin: const EdgeInsets.only(right: 5, bottom: 90, top: 5),
          padding: const EdgeInsets.only(top: 7),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Tuesday',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Candara')),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text('+19 ℃',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Candara')),
                    SizedBox(
                      width: 7.0,
                    ),
                    Icon(Icons.water_drop_rounded,
                        color: Colors.white, size: 30.0),
                  ])
            ],
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 60, 167, 255),
          margin: const EdgeInsets.only(right: 5, bottom: 90, top: 5),
          padding: const EdgeInsets.only(top: 7),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Wednesday',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Candara')),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text('+25 ℃',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Candara')),
                    SizedBox(
                      width: 7.0,
                    ),
                    Icon(Icons.wb_sunny, color: Colors.white, size: 30.0),
                  ])
            ],
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 60, 167, 255),
          margin: const EdgeInsets.only(right: 5, bottom: 90, top: 5),
          padding: const EdgeInsets.only(top: 7),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Thursday',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Candara')),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text('+23 ℃',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Candara')),
                    SizedBox(
                      width: 7.0,
                    ),
                    Icon(Icons.wb_cloudy, color: Colors.white, size: 30.0),
                  ])
            ],
          ),
        ),
      ],
    ),
  );
}
