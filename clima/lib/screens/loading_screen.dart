import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;
  dynamic weatherData;

  void initState(){
    super.initState();
    getLocationData();
  }
  void getLocationData() {
    weatherData = WeatherModel().getLocationWeather();
    Future.delayed(
      Duration(seconds: 1),(){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LocationScreen(locationWeather: weatherData,),
          ),
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}