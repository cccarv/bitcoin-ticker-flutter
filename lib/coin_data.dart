import 'dart:convert';
import 'package:bitcoin_ticker/network.dart';
import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const apiKey = '7C61EC16-08B4-476C-BCE2-5F111C14ECE9';
const baseUrl = 'rest.coinapi.io';
const moreUrl = '/v1/exchangerate/BTC/USD';

class CoinData {
  Future<dynamic> getCoinData() async {
    var finalUrl = Uri.https(baseUrl, moreUrl, {
      'apikey': '$apiKey',
    });

    NetworkHelper networkHelper = NetworkHelper(finalUrl);
    var coinQuote = await networkHelper.getData();
    return coinQuote;
  }
}
