// Copyright (c) 2017, Joshua Feltimo. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

import 'dartify_objects.dart';
import 'dartify_utils.dart';

class DartifyBase {

  static FullAlbumObject getAlbumFromId(String accessToken, String albumId) {
    HttpRequest req = new HttpRequest();
    req.open("GET", "api.spotify.com/${DartifyUtils.ALBUM}");
    req.setRequestHeader("Authorization", "Bearer $accessToken");
    return new FullAlbumImpl.fromJsonString(req.response);
  }

  static String getRawResponse(String accessToken, String albumId) {
    HttpRequest req = new HttpRequest();
    req.open("GET", "https://api.spotify.com/${DartifyUtils.ALBUM}");
    req.setRequestHeader("Authorization", "Bearer $accessToken");
    return req.responseText;
  }
}