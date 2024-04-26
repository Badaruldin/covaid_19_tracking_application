import 'package:covaid_19_tracking_app/View/world_states.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({
    super.key,
    required this.countryName,
    required this.imageAd,
    required this.active,
    required this.cases,
    required this.deaths,
    required this.recovered,
    required this.test,
    required this.todayRecovered,
  });
  String countryName, imageAd;
  int cases, deaths, recovered, test, active, todayRecovered;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(countryName),),
      body: Center(
        child: Column(children: [
        CircleAvatar(radius: 50.0,backgroundImage: NetworkImage(imageAd)),
        CovaidRow(title: "Cases:", data: cases.toString(),height: 5,),
        CovaidRow(title: "Tests:", data: test.toString(),height: 5,),
        CovaidRow(title: "TotalRecoverd:", data: recovered.toString(),height: 5),
        CovaidRow(title: "Active:", data: active.toString(),height: 5),
        CovaidRow(title: "Deaths:", data: deaths.toString(),height: 5),
        CovaidRow(title: "TodayRecoverd:", data: todayRecovered.toString(),height: 5),
      ],),),
    );
  }
}
