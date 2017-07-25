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
  Map<String, String> external_ids;
  Map<String, String> external_urls;
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
  Map<String, String> external_urls;
  String href;
  String id;
  String name;
  String type;
  String uri;
}

abstract class CopyrightObject {
  String text;
  String type;
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
  Map<String, String> external_urls;
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
  Map<String, String> external_urls;
  String href;
  String id;
  String type;
  String uri;
}

abstract class PrivateUserObject {
  String birthdate;
  String country;
  String display_name;
  dynamic email;
  Map<String, String> external_urls;
  FollowersObject followers;
  String href;
  String id;
  List<ImageObject> images;
  String product;
  String type;
  String uri;
}

abstract class FollowersObject {
  String href;
  int total;
}

abstract class FullTrackObject {
  SimplifiedAlbumObject album;
  List<SimplifiedArtistObject> artists;
  List<String> available_markets;
  int disc_number;
  int duration_ms;
  bool explicit;
  Map<String, String> external_ids;
  Map<String, String> external_urls;
  String href;
  String id;
  bool is_playable;
  LinkedTrackObject linked_from;
  String name;
  int popularity;
  String preview_url;
  int track_number;
  String type;
  String uri;
}

abstract class CurrentlyPlayingObject {
  ContextObject context;
  int timestamp;
  int progress_ms;
  bool is_playing;
  FullTrackObject item;
}

abstract class SimplifiedAlbumObject {
  String album_type;
  List<SimplifiedArtistObject> artists;
  List<String> available_markets;
  Map<String, String> external_urls;
  String href;
  String id;
  List<ImageObject> images;
  String name;
  String type;
  String uri;
}

abstract class ContextObject {
  String uri;
  String href;
  Map<String, String> external_urls;
  String type;
}

abstract class FullArtistObject {
  Map<String, String> external_urls;
  FollowersObject followers;
  List<String> genres;
  String href;
  String id;
  List<ImageObject> images;
  String name;
  int popularity;
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

class PrivateUserImpl extends JsonObject implements PrivateUserObject {
  PrivateUserImpl();
  factory PrivateUserImpl.fromJsonString(String) {
    print('Creating Private User Object');
    return new JsonObject.fromJsonString(String, new PrivateUserImpl());
  }
}

class CurrentlyPlayingImpl extends JsonObject implements CurrentlyPlayingObject {
  CurrentlyPlayingImpl();
  factory CurrentlyPlayingImpl.fromJsonString(String) {
    print('Creating CurrentlyPlayingObject');
    return new JsonObject.fromJsonString(String, new CurrentlyPlayingImpl());
  }
}

class FullArtistImpl extends JsonObject implements FullArtistObject {
  FullArtistImpl();

  factory FullArtistImpl.fromJsonString(String) {
    print('Creating FullArtistObject');
    return new JsonObject.fromJsonString(String, new FullArtistImpl());
  }
}