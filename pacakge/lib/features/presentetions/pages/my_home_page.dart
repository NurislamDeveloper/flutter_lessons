import 'package:flutter/material.dart';
import 'package:pacakge/features/data/dio.dart';
import 'package:pacakge/features/data/model.dart';

class WeatherScreen extends StatelessWidget {
  final Infor infor = Infor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Info'),
      ),
      body: FutureBuilder<Model?>(
        future: infor.fetchWeatherData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data == null) {
            return Center(child: Text('No data available'));
          } else {
            final weatherData = snapshot.data!;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ID: ${weatherData.id}'),
                Text('Main: ${weatherData.main}'),
                Text('Description: ${weatherData.description}'),
                Text('Icon: ${weatherData.icon}'),
              ],
            );
          }
        },
      ),
    );
  }
}

