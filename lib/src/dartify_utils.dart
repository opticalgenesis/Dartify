// Copyright (c) 2017, Joshua Feltimo. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:core';
import 'dart:html';

import 'package:cryptoutils/cryptoutils.dart';
import 'package:meta/meta.dart';

class DartifyUtils {
  String code;
  String clientId;
  String clientSecret;
  String redirectUri;

  DartifyUtils(@required this.code, @required this.clientId, @required this.clientSecret, this.redirectUri);


  String AccessToken(String code) {
    HttpRequest request = new HttpRequest();
    String url = "https://accounts.spotify.com/api/token";
    request.open("POST", url, async: false);
    String auth = CryptoUtils.bytesToBase64(UTF8.encode("$clientId:$clientSecret"));
    request.setRequestHeader('Authorization', "Basic $auth");
    request.setRequestHeader('content-type', 'application/x-www-formurlencoded');
    String data = "grant_type=authorization_code&code=$code&redirect_uri=$redirectUri";
    request.send(data);
    return request.response;
  }
}
