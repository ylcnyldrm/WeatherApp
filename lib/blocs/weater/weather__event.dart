part of 'weather__bloc.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}

//hava durumunu getir eventi
class FetchWeatherEvent extends WeatherEvent {
  final String sehirAdi;

  @override
  // TODO: implement props
  List<Object> get props => [sehirAdi];

  FetchWeatherEvent({@required this.sehirAdi});
}
