// Copyright (c) 2017, Joshua Feltimo. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:core';

class DartifyUtils {

  static String ALBUM = "/v1/albums/";
  static String ALBUMS = "/v1/albums/?ids=";
  static String ARTIST = "/v1/artists/";
  static String CURRENTLY_PLAYING = "/v1/me/player/currently-playing";
  static String PLAYER_NEXT = "/v1/me/player/next";
  static String PLAYER_PAUSE = "/v1/me/player/pause";
  static String PLAYER_PLAY = "/v1/me/player/player";
  static String PLAYER_PREVIOUS = "/v1/me/player/previous";
  static String PLAYER_REPEAT = "/v1/me/player/repeat";
  static String PLAYER_SHUFFLE = "/v1/me/player/shuffle";
  static String USER_PROFILE_PRIVATE = "/v1/me";

  static List<String> endpoints = <String>[
    ALBUM,
    ALBUMS,
    ARTIST,
    CURRENTLY_PLAYING,
    USER_PROFILE_PRIVATE,
  ];
}