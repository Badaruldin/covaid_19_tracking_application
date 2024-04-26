import 'package:covaid_19_tracking_app/Functionality/apiFunctionalityClass.dart';
import 'package:covaid_19_tracking_app/View/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shimmer/shimmer.dart';

class CovaidCountries extends StatefulWidget {
  const CovaidCountries({super.key});

  @override
  State<CovaidCountries> createState() => _CovaidCountriesState();
}

final _searchController = TextEditingController();

class _CovaidCountriesState extends State<CovaidCountries> {
  final ApiFunctionalityClass _apiFunctionalityClass = ApiFunctionalityClass();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: const Text('Covaid-Effected-Countries'),
          centerTitle: true),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: TextFormField(
                onChanged: (val) {
                  setState(() {});
                },
                controller: _searchController,
                // autocorrect: true,
                decoration: const InputDecoration(
                    hintText: 'Search Country',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))))),
          ),
          Expanded(
            child: FutureBuilder(
              future: _apiFunctionalityClass.countriesListApi(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) {
                        String country = snapshot.data![index]['country'];
                        if (_searchController.text.isEmpty) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailScreen(
                                              countryName: snapshot.data![index] ['country'].toString(),
                                              imageAd: snapshot.data![index]['countryInfo']['flag'].toString(),
                                              active:  snapshot.data![index] ['active'],
                                              cases: snapshot.data![index] ['cases'],
                                              deaths: snapshot.data![index] ['deaths'],
                                              recovered:snapshot.data![index] ['recovered'] ,
                                              test: snapshot.data![index] ['tests'],
                                              todayRecovered: snapshot.data![index] ['todayRecovered'],
                                            )));
                              },
                            
                              child: Card(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image(
                                        width: 60,
                                        height: 60,
                                        image: NetworkImage(
                                            snapshot.data![index]['countryInfo']
                                                ['flag'])),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          snapshot.data![index]['country']
                                              .toString(),
                                          style: const TextStyle(
                                              fontSize: 25,
                                              color: Color.fromARGB(
                                                  255, 10, 107, 14)),
                                        ),
                                        Text(
                                          snapshot.data![index]['active']
                                              .toString(),
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: Color.fromARGB(
                                                  255, 22, 173, 85)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        } else if ( country.toLowerCase().startsWith(_searchController.text.toLowerCase()
                           )) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Card(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image(
                                      width: 60,
                                      height: 60,
                                      image: NetworkImage(snapshot.data![index]
                                          ['countryInfo']['flag'])),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        snapshot.data![index]['country']
                                            .toString(),
                                        style: const TextStyle(
                                            fontSize: 25,
                                            color: Color.fromARGB(
                                                255, 10, 107, 14)),
                                      ),
                                      Text(
                                        snapshot.data![index]['active']
                                            .toString(),
                                        style: const TextStyle(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 22, 173, 85)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                } else {
                  return Shimmer.fromColors(
                      baseColor: Colors.black26,
                      highlightColor: Colors.black87,
                      child: Column(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                color: Colors.white70,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 30,
                                width: 120,
                                color: Colors.white60,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 30,
                                width: 120,
                                color: Colors.white54,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                color: Colors.white70,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 30,
                                width: 120,
                                color: Colors.white60,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 30,
                                width: 120,
                                color: Colors.white54,
                              ),
                            ],
                          ),
                        ],
                      ));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
