import 'dart:html';

import 'dartify_utils.dart';

class DartifyPlayback {

  static void PlayerPlay(String accessToken) {
    HttpRequest req = _generateRequest(
        "https://api.spotify.com${DartifyUtils.PLAYER_PLAY}", "PUT",
        accessToken);
    req.send();
  }

  static void PlayerPause(String accessToken) {
    HttpRequest req = _generateRequest(
        "https://api.spotify.com${DartifyUtils.PLAYER_PAUSE}", "PUT",
        accessToken);
    req.send();
  }

  static void PlayerNext(String accessToken) {
    HttpRequest req = _generateRequest(
        "https://api.spotify.com${DartifyUtils.PLAYER_NEXT}", "POST",
        accessToken);
    req.send();
  }

  static void PlayerPrevious(String accessToken) {
    HttpRequest req = _generateRequest(
        "https://api.spotify.com${DartifyUtils.PLAYER_PREVIOUS}", "POST",
        accessToken);
    req.send();
  }

  static void PlayerShuffle(String accessToken) {
    HttpRequest req = _generateRequest(
        "https://api.spotify.com${DartifyUtils.PLAYER_SHUFFLE}", "PUT",
        accessToken);
    req.send();
  }

  static void PlayerRepeat(String accessToken) {
    HttpRequest req = _generateRequest(
        "https://api.spotify.com${DartifyUtils.PLAYER_REPEAT}", "PUT",
        accessToken);
    req.send();
  }

  static HttpRequest _generateRequest(String url, String method,
      String accessToken) {
    HttpRequest req = new HttpRequest();
    req.open(method, url);
    req.setRequestHeader("Authorization", "Bearer $accessToken");
    return req;
  }
}