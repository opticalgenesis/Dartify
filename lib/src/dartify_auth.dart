// Copyright (c) 2017, Joshua Feltimo. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:math';

class DartifyAuth {

  static String getAuthorizationUrl(String clientId, String redirectUri,
      String scopes, String state) {
    return 'https://accounts.spotify.com/authorize?response_type=token&client_id=$clientId'
        '&scope=$scopes&redirect_uri=$redirectUri&state=$state';
  }

  static String getState() {
    String seed = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890abcdefghijklmnoqrstuvwxyz';
    StringBuffer sb = new StringBuffer();
    Random r = new Random();
    for (int i = 0; i < 20; i++) {
      sb.write(seed[r.nextInt(seed.length)]);
    }
    return sb.toString();
  }
}