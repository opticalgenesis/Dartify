// Copyright (c) 2017, Joshua Feltimo. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:core';

class AuthenticationObject {
  String code;
  String state;
}

class ErrorObject {
  String error;
  String state;
}

class CodeObject {
  String access_token;
  String token_type;
  String scope;
  int expires_in;
  String refresh_token;
}

class FullAlbumObject {
  String album_type;
  List<SimplifiedArtistObject> artists;
  List<String> available_markets;
  List<CopyrightObject> copyrights;
  ExternalIdObject external_ids;
  ExternalUrlObject external_urls;
  List<String> genres;
  String href;
  String id;
  List<ImageObject> images;
  String label;
  String name;
  int popularity;
  String release_date;
  String release_date_precision;
  PagingObject<SimplifiedTrackObject> tracks;
  String type;
  String uri;
}

class SimplifiedArtistObject {
  ExternalUrlObject external_urls;
  String href;
  String id;
  String name;
  String type;
  String uri;
}

class ExternalUrlObject {
  String key;
  String value;
}

class CopyrightObject {
  String text;
  String type;
}

class ExternalIdObject {
  String key;
  String value;
}

class ImageObject {
  int height;
  String url;
  int width;
}

class PagingObject<T> {
  String href;
  List<T> items;
  int limit;
  String next;
  int offset;
  String previous;
  int total;
}

class SimplifiedTrackObject {
  List<SimplifiedArtistObject> artists;
  List<String> available_markets;
  int disc_number;
  int duration_ms;
  bool explicit;
  ExternalUrlObject external_urls;
  String href;
  String id;
  bool is_playable;
  LinkedTrackObject linked_from;
  String name;
  String preview_url;
  int track_number;
  String type;
  String uri;
}

class LinkedTrackObject {
  ExternalUrlObject external_urls;
  String href;
  String id;
  String type;
  String uri;
}