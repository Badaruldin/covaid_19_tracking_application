import 'package:covaid_19_tracking_app/Functionality/apiFunctionalityClass.dart';
import 'package:covaid_19_tracking_app/View/covaid_countries.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pie_chart/pie_chart.dart';

class WorldStatesScreen extends StatefulWidget {
  const WorldStatesScreen({super.key});

  @override
  State<WorldStatesScreen> createState() => _WorldStatesScreenState();
}

class _WorldStatesScreenState extends State<WorldStatesScreen>
    with TickerProviderStateMixin {
  late final _animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 4))
        ..reverse();

  final Map<String, double> mapData = {
    'a:': 230,
    ' b:': 80.3,
    'c:': 15,
    'd': 17,
  };

  @override
  Widget build(BuildContext context) {
    final ApiFunctionalityClass apiFunctionalityClass = ApiFunctionalityClass();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Covaid Details"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          FutureBuilder(
            future: apiFunctionalityClass.fetchCovaidStatesData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PieChart(
                      dataMap: {
                        'Total:': snapshot.data!.cases!.toDouble(),
                        ' Recoverd:': snapshot.data!.recovered!.toDouble(),
                        'Deaths:': snapshot.data!.deaths!.toDouble(),
                      },
                      animationDuration: const Duration(seconds: 2),
                      colorList: const [
                        Colors.redAccent,
                        Colors.pink,
                        Colors.cyan,
                        // Colors.blueGrey
                      ],
                      legendLabels: const {
                        't': 'Runs',
                        'o': 'Overs',
                        'w': 'Wickets',
                      },
                      chartRadius: 200,
                      centerText: 'Covaid Stats',
                      chartType: ChartType.disc,
                      legendOptions: const LegendOptions(
                        showLegendsInRow: false,
                        legendShape: BoxShape.circle,
                      ),
                      chartValuesOptions: const ChartValuesOptions(
                        showChartValueBackground: true,
                        showChartValues: true,
                        showChartValuesInPercentage: true,
                        showChartValuesOutside: false,
                        decimalPlaces: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CovaidRow(
                        title: "Total Recorded Cases:",
                        data: snapshot.data!.cases!.toString()),
                    const Divider(
                      color: Colors.black38,
                    ),
                    CovaidRow(
                        title: "Todays Recorded Cases:",
                        data: snapshot.data!.todayCases!.toString()),
                    const Divider(
                      color: Colors.black38,
                    ),
                    CovaidRow(
                        title: "Recoverd Cases:",
                        data: snapshot.data!.recovered!.toString()),
                    const Divider(
                      color: Colors.black38,
                    ),
                    CovaidRow(
                        title: "Total Test Conducted:",
                        data: snapshot.data!.tests!.toString()),
                    const Divider(
                      color: Colors.black38,
                    ),
                    CovaidRow(
                        title: "Effected Countries:",
                        data: snapshot.data!.affectedCountries!.toString()),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const CovaidCountries()));
                        },
                        child: const Text('Wanna check Countries states'))
                  ],
                );
              } else if (snapshot.hasError) {
                print(snapshot.error);
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else {
                print('Loading');
                return Expanded(
                  flex: 1,
                  child: Center(
                    child: SpinKitWaveSpinner(
                      color: Colors.lightBlue,
                       size: 70.0,
                      curve : Curves.easeOutExpo,
                      controller: _animationController,
                       duration: const Duration(seconds: 2),
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

class CovaidRow extends StatelessWidget {
  CovaidRow({super.key, required this.title, required this.data, this.height});
  final String title, data;
  double? height=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(color: Color.fromARGB(255, 6, 116, 10)),
          ),
          Text(data, style: const TextStyle(color: Color(0xFF06599C))),
          SizedBox(height: height,)
        ],
      ),
    );
  }
}
