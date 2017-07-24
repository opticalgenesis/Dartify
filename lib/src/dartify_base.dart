// Copyright (c) 2017, Joshua Feltimo. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

import 'dartify_objects.dart';
import 'dartify_utils.dart';

class DartifyBase {

  static FullAlbumObject getAlbumFromId(String accessToken, String albumId) {
    HttpRequest req = new HttpRequest();
    req.open("GET", "https://api.spotify.com${DartifyUtils.ALBUM}${albumId}", async: false);
    req.setRequestHeader("Authorization", "Bearer $accessToken");
    req.send();
    return new FullAlbumImpl.fromJsonString(req.response);
  }

  static PrivateUserObject getUser(String accessToken) {
    HttpRequest req = _generateHttpRequest("https://api.spotify.com${DartifyUtils.USER_PROFILE_PRIVATE}", "GET", accessToken);
    req.send();
    return new PrivateUserImpl.fromJsonString(req.response);
  }
  
  static CurrentlyPlayingObject getCurrentlyPlaying(String accessToken) {
    HttpRequest req = _generateHttpRequest("https://api.spotify.com${DartifyUtils.CURRENTLY_PLAYING}", "GET", accessToken);
    req.send();
    return new CurrentlyPlayingImpl.fromJsonString(req.response);
  }

  static String getRawResponse(String accessToken, String albumId) {
    HttpRequest req = new HttpRequest();
    req.open("GET", "https://api.spotify.com${DartifyUtils.ALBUM}$albumId", async: false);
    req.setRequestHeader("Authorization", "Bearer $accessToken");
    req.send();
    print(req.status);
    return req.responseText;
  }

  static HttpRequest _generateHttpRequest(String url, String method, String accessToken) {
    HttpRequest req = new HttpRequest();
    req.open(method, url, async: false);
    req.setRequestHeader("Authorization", "Bearer $accessToken");
    return req;
  }
}