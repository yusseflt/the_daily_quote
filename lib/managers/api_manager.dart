import 'package:daily_quotes/helpers/request_handler.dart';
import 'package:http/http.dart' as http;

class ApiManager {
  static final String BASE_INSPIRATIONAL_API =
      "https://inspiration.goprogram.co.uk";
  static final String BASE_KANYE_API = "https://api.kanye.rest/";
  static final String BASE_INSULT_API =
      "https://evilinsult.com/generate_insult.php?lang=en&type=json";

  Future getInspirationalPhrase() async {
    try {
      var url = Uri.parse('$BASE_INSPIRATIONAL_API');
      var res = await RequestHandler.handleReponses(await http.get(url));

      return res;
    } catch (e) {
      throw e;
    }
  }

  Future getInsultPhrase() async {
    try {
      var url = Uri.parse('$BASE_INSULT_API');
      var res = await RequestHandler.handleReponses(await http.get(url));

      return res;
    } catch (e) {
      throw e;
    }
  }

  Future getKanyePhrase() async {
    try {
      var url = Uri.parse('$BASE_KANYE_API');
      var res = await RequestHandler.handleReponses(await http.get(url));

      return res;
    } catch (e) {
      throw e;
    }
  }
}
