// Copyright (c) 2017, Joshua Feltimo. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:core';
import 'dart:html';

import 'package:meta/meta.dart';

class DartifyUtils {

  static String ALBUM = "/v1/albums/";
  static String USER_PROFILE_PRIVATE = "/v1/me";
  static String CURRENTLY_PLAYING = "/v1/me/player/currently-playing";

  static List<String> endpoints = <String>[
    ALBUM,
    USER_PROFILE_PRIVATE,
    CURRENTLY_PLAYING
  ];
}
