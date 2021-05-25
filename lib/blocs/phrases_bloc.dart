import 'package:daily_quotes/managers/api_manager.dart';
import 'package:daily_quotes/models/quotes.dart';
import 'package:rxdart/rxdart.dart';

class PhrasesBloc {
  PublishSubject<Map> _phrasesSubject;
  Stream<Map> get phrasesStream => _phrasesSubject.stream;
  ApiManager _apiManager = ApiManager();
  Quotes inspirational;
  Quotes insult;
  Quotes kanye;

  PhrasesBloc() {
    _phrasesSubject = PublishSubject<Map>();
  }

  Future getPhrases() async {
    await Future.wait([
      getInspirationalPhrase(),
      getInsultPhrase(),
      getKanyePhrase(),
    ]);

    _phrasesSubject.sink.add(
        {'inspirational': inspirational, 'insult': insult, 'kanye': kanye});
  }

  Future getInspirationalPhrase() async {
    try {
      var res = await _apiManager.getInspirationalPhrase();
      inspirational = Quotes(author: res['author'], quote: res['quote']);
    } catch (e) {}
  }

  Future getInsultPhrase() async {
    try {
      var res = await _apiManager.getInsultPhrase();
      insult = Quotes(
          author: "Someone", quote: res['insult'].replaceAll('E-quot;', ''));
    } catch (e) {}
  }

  Future getKanyePhrase() async {
    try {
      var res = await _apiManager.getKanyePhrase();
      kanye = Quotes(author: "Kanye West", quote: res['quote']);
    } catch (e) {}
  }

  void dispose() {
    _phrasesSubject.close();
  }
}
