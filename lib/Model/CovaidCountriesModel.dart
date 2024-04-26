/// updated : 1711951043801
/// country : "Afghanistan"
/// countryInfo : {"_id":4,"iso2":"AF","iso3":"AFG","lat":33,"long":65,"flag":"https://disease.sh/assets/img/flags/af.png"}
/// cases : 232152
/// todayCases : 0
/// deaths : 7985
/// todayDeaths : 0
/// recovered : 210164
/// todayRecovered : 0
/// active : 14003
/// critical : 0
/// casesPerOneMillion : 5696
/// deathsPerOneMillion : 196
/// tests : 1366532
/// testsPerOneMillion : 33531
/// population : 40754388
/// continent : "Asia"
/// oneCasePerPeople : 176
/// oneDeathPerPeople : 5104
/// oneTestPerPeople : 30
/// activePerOneMillion : 343.59
/// recoveredPerOneMillion : 5156.84
/// criticalPerOneMillion : 0

class CovaidCountriesModel {
  CovaidCountriesModel({
      double? updated, 
      String? country, 
      CountryInfo? countryInfo, 
      double? cases, 
      double? todayCases, 
      double? deaths, 
      double? todayDeaths, 
      double? recovered, 
      double? todayRecovered, 
      double? active, 
      double? critical, 
      double? casesPerOneMillion, 
      double? deathsPerOneMillion, 
      double? tests, 
      double? testsPerOneMillion, 
      double? population, 
      String? continent, 
      double? oneCasePerPeople, 
      double? oneDeathPerPeople, 
      double? oneTestPerPeople, 
      double? activePerOneMillion, 
      double? recoveredPerOneMillion, 
      double? criticalPerOneMillion,}){
    _updated = updated;
    _country = country;
    _countryInfo = countryInfo;
    _cases = cases;
    _todayCases = todayCases;
    _deaths = deaths;
    _todayDeaths = todayDeaths;
    _recovered = recovered;
    _todayRecovered = todayRecovered;
    _active = active;
    _critical = critical;
    _casesPerOneMillion = casesPerOneMillion;
    _deathsPerOneMillion = deathsPerOneMillion;
    _tests = tests;
    _testsPerOneMillion = testsPerOneMillion;
    _population = population;
    _continent = continent;
    _oneCasePerPeople = oneCasePerPeople;
    _oneDeathPerPeople = oneDeathPerPeople;
    _oneTestPerPeople = oneTestPerPeople;
    _activePerOneMillion = activePerOneMillion;
    _recoveredPerOneMillion = recoveredPerOneMillion;
    _criticalPerOneMillion = criticalPerOneMillion;
}

  CovaidCountriesModel.fromJson(dynamic json) {
    _updated = json['updated'];
    _country = json['country'];
    _countryInfo = json['countryInfo'] != null ? CountryInfo.fromJson(json['countryInfo']) : null;
    _cases = json['cases'];
    _todayCases = json['todayCases'];
    _deaths = json['deaths'];
    _todayDeaths = json['todayDeaths'];
    _recovered = json['recovered'];
    _todayRecovered = json['todayRecovered'];
    _active = json['active'];
    _critical = json['critical'];
    _casesPerOneMillion = json['casesPerOneMillion'];
    _deathsPerOneMillion = json['deathsPerOneMillion'];
    _tests = json['tests'];
    _testsPerOneMillion = json['testsPerOneMillion'];
    _population = json['population'];
    _continent = json['continent'];
    _oneCasePerPeople = json['oneCasePerPeople'];
    _oneDeathPerPeople = json['oneDeathPerPeople'];
    _oneTestPerPeople = json['oneTestPerPeople'];
    _activePerOneMillion = json['activePerOneMillion'];
    _recoveredPerOneMillion = json['recoveredPerOneMillion'];
    _criticalPerOneMillion = json['criticalPerOneMillion'];
  }
  double? _updated;
  String? _country;
  CountryInfo? _countryInfo;
  double? _cases;
  double? _todayCases;
  double? _deaths;
  double? _todayDeaths;
  double? _recovered;
  double? _todayRecovered;
  double? _active;
  double? _critical;
  double? _casesPerOneMillion;
  double? _deathsPerOneMillion;
  double? _tests;
  double? _testsPerOneMillion;
  double? _population;
  String? _continent;
  double? _oneCasePerPeople;
  double? _oneDeathPerPeople;
  double? _oneTestPerPeople;
  double? _activePerOneMillion;
  double? _recoveredPerOneMillion;
  double? _criticalPerOneMillion;
CovaidCountriesModel copyWith({  double? updated,
  String? country,
  CountryInfo? countryInfo,
  double? cases,
  double? todayCases,
  double? deaths,
  double? todayDeaths,
  double? recovered,
  double? todayRecovered,
  double? active,
  double? critical,
  double? casesPerOneMillion,
  double? deathsPerOneMillion,
  double? tests,
  double? testsPerOneMillion,
  double? population,
  String? continent,
  double? oneCasePerPeople,
  double? oneDeathPerPeople,
  double? oneTestPerPeople,
  double? activePerOneMillion,
  double? recoveredPerOneMillion,
  double? criticalPerOneMillion,
}) => CovaidCountriesModel(  updated: updated ?? _updated,
  country: country ?? _country,
  countryInfo: countryInfo ?? _countryInfo,
  cases: cases ?? _cases,
  todayCases: todayCases ?? _todayCases,
  deaths: deaths ?? _deaths,
  todayDeaths: todayDeaths ?? _todayDeaths,
  recovered: recovered ?? _recovered,
  todayRecovered: todayRecovered ?? _todayRecovered,
  active: active ?? _active,
  critical: critical ?? _critical,
  casesPerOneMillion: casesPerOneMillion ?? _casesPerOneMillion,
  deathsPerOneMillion: deathsPerOneMillion ?? _deathsPerOneMillion,
  tests: tests ?? _tests,
  testsPerOneMillion: testsPerOneMillion ?? _testsPerOneMillion,
  population: population ?? _population,
  continent: continent ?? _continent,
  oneCasePerPeople: oneCasePerPeople ?? _oneCasePerPeople,
  oneDeathPerPeople: oneDeathPerPeople ?? _oneDeathPerPeople,
  oneTestPerPeople: oneTestPerPeople ?? _oneTestPerPeople,
  activePerOneMillion: activePerOneMillion ?? _activePerOneMillion,
  recoveredPerOneMillion: recoveredPerOneMillion ?? _recoveredPerOneMillion,
  criticalPerOneMillion: criticalPerOneMillion ?? _criticalPerOneMillion,
);
  double? get updated => _updated;
  String? get country => _country;
  CountryInfo? get countryInfo => _countryInfo;
  double? get cases => _cases;
  double? get todayCases => _todayCases;
  double? get deaths => _deaths;
  double? get todayDeaths => _todayDeaths;
  double? get recovered => _recovered;
  double? get todayRecovered => _todayRecovered;
  double? get active => _active;
  double? get critical => _critical;
  double? get casesPerOneMillion => _casesPerOneMillion;
  double? get deathsPerOneMillion => _deathsPerOneMillion;
  double? get tests => _tests;
  double? get testsPerOneMillion => _testsPerOneMillion;
  double? get population => _population;
  String? get continent => _continent;
  double? get oneCasePerPeople => _oneCasePerPeople;
  double? get oneDeathPerPeople => _oneDeathPerPeople;
  double? get oneTestPerPeople => _oneTestPerPeople;
  double? get activePerOneMillion => _activePerOneMillion;
  double? get recoveredPerOneMillion => _recoveredPerOneMillion;
  double? get criticalPerOneMillion => _criticalPerOneMillion;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['updated'] = _updated;
    map['country'] = _country;
    if (_countryInfo != null) {
      map['countryInfo'] = _countryInfo?.toJson();
    }
    map['cases'] = _cases;
    map['todayCases'] = _todayCases;
    map['deaths'] = _deaths;
    map['todayDeaths'] = _todayDeaths;
    map['recovered'] = _recovered;
    map['todayRecovered'] = _todayRecovered;
    map['active'] = _active;
    map['critical'] = _critical;
    map['casesPerOneMillion'] = _casesPerOneMillion;
    map['deathsPerOneMillion'] = _deathsPerOneMillion;
    map['tests'] = _tests;
    map['testsPerOneMillion'] = _testsPerOneMillion;
    map['population'] = _population;
    map['continent'] = _continent;
    map['oneCasePerPeople'] = _oneCasePerPeople;
    map['oneDeathPerPeople'] = _oneDeathPerPeople;
    map['oneTestPerPeople'] = _oneTestPerPeople;
    map['activePerOneMillion'] = _activePerOneMillion;
    map['recoveredPerOneMillion'] = _recoveredPerOneMillion;
    map['criticalPerOneMillion'] = _criticalPerOneMillion;
    return map;
  }

}

/// _id : 4
/// iso2 : "AF"
/// iso3 : "AFG"
/// lat : 33
/// long : 65
/// flag : "https://disease.sh/assets/img/flags/af.png"

class CountryInfo {
  CountryInfo({
      double? id, 
      String? iso2, 
      String? iso3, 
      double? lat, 
      double? long, 
      String? flag,}){
    _id = id;
    _iso2 = iso2;
    _iso3 = iso3;
    _lat = lat;
    _long = long;
    _flag = flag;
}

  CountryInfo.fromJson(dynamic json) {
    _id = json['_id'];
    _iso2 = json['iso2'];
    _iso3 = json['iso3'];
    _lat = json['lat'];
    _long = json['long'];
    _flag = json['flag'];
  }
  double? _id;
  String? _iso2;
  String? _iso3;
  double? _lat;
  double? _long;
  String? _flag;
CountryInfo copyWith({  double? id,
  String? iso2,
  String? iso3,
  double? lat,
  double? long,
  String? flag,
}) => CountryInfo(  id: id ?? _id,
  iso2: iso2 ?? _iso2,
  iso3: iso3 ?? _iso3,
  lat: lat ?? _lat,
  long: long ?? _long,
  flag: flag ?? _flag,
);
  double? get id => _id;
  String? get iso2 => _iso2;
  String? get iso3 => _iso3;
  double? get lat => _lat;
  double? get long => _long;
  String? get flag => _flag;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['iso2'] = _iso2;
    map['iso3'] = _iso3;
    map['lat'] = _lat;
    map['long'] = _long;
    map['flag'] = _flag;
    return map;
  }

}