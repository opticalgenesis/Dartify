// Copyright (c) 2017, Joshua Feltimo. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:core';

import 'package:json_object/json_object.dart';

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

abstract class FullAlbumObject {
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

 abstract class SimplifiedArtistObject {
  ExternalUrlObject external_urls;
  String href;
  String id;
  String name;
  String type;
  String uri;
}

abstract class ExternalUrlObject {
  String key;
  String value;
}

abstract class CopyrightObject {
  String text;
  String type;
}

abstract class ExternalIdObject {
  String key;
  String value;
}

abstract class ImageObject {
  int height;
  String url;
  int width;
}

abstract class PagingObject<T> {
  String href;
  List<T> items;
  int limit;
  String next;
  int offset;
  String previous;
  int total;
}

abstract class SimplifiedTrackObject {
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

abstract class LinkedTrackObject {
  ExternalUrlObject external_urls;
  String href;
  String id;
  String type;
  String uri;
}

class FullAlbumImpl extends JsonObject implements FullAlbumObject {
  FullAlbumImpl();
  factory FullAlbumImpl.fromJsonString(String) {
    print("Creating FullAlbumObject");
    return new JsonObject.fromJsonString(String, new FullAlbumImpl());
  }
}