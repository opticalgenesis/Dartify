import 'dart:html';
import 'package:js/js.dart';
@JS("https://sdk.scdn.co/spotify-player.js")
library spotify;

import 'dartify_utils.dart';

@JS()
class SpotifyPlayer {
  external String name;
  external getOauthToken getOauthToken(retrieveOauthToken);
}

@JS()
external getOauthToken(SpotifyCallback cb);

@JS()
external class SpotifyCallback {
  external void get callback;
  external factory SpotifyCallback({void cb});
}

void retriveOauthToken(String accessToken) {
  print(accessToken);
}

class DartifyPlayback {

  // static void PlayerPlay(String accessToken) {
  //   HttpRequest req = _generateRequest(
  //       "https://api.spotify.com${DartifyUtils.PLAYER_PLAY}", "PUT",
  //       accessToken);
  //   req.send();
  // }

  // static void PlayerPause(String accessToken) {
  //   HttpRequest req = _generateRequest(
  //       "https://api.spotify.com${DartifyUtils.PLAYER_PAUSE}", "PUT",
  //       accessToken);
  //   req.send();
  // }

  // static void PlayerNext(String accessToken) {
  //   HttpRequest req = _generateRequest(
  //       "https://api.spotify.com${DartifyUtils.PLAYER_NEXT}", "POST",
  //       accessToken);
  //   req.send();
  // }

  // static void PlayerPrevious(String accessToken) {
  //   HttpRequest req = _generateRequest(
  //       "https://api.spotify.com${DartifyUtils.PLAYER_PREVIOUS}", "POST",
  //       accessToken);
  //   req.send();
  // }

  // static void PlayerShuffle(String accessToken) {
  //   HttpRequest req = _generateRequest(
  //       "https://api.spotify.com${DartifyUtils.PLAYER_SHUFFLE}", "PUT",
  //       accessToken);
  //   req.send();
  // }

  // static void PlayerRepeat(String accessToken) {
  //   HttpRequest req = _generateRequest(
  //       "https://api.spotify.com${DartifyUtils.PLAYER_REPEAT}", "PUT",
  //       accessToken);
  //   req.send();
  // }

  // static HttpRequest _generateRequest(String url, String method,
  //     String accessToken) {
  //   HttpRequest req = new HttpRequest();
  //   req.open(method, url);
  //   req.setRequestHeader("Authorization", "Bearer $accessToken");
  //   return req;
  // }
}