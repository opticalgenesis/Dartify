# dartify

A currently beta wrapper for the Spotify API for Dart

## Usage

A simple usage example:

    import 'package:dartify/dartify.dart';
    
    // $client_id and $redirect_uri MUST match those registered in the API console
    // Valid scopes can be found [here](https://developer.spotify.com/web-api/using-scopes/)
    String getAuthenticaionAddress() {
        String scopes = 'user-read-private';
        String randomState = DartifyAuth.getState();
        return DartifyAuth.getAuthorizationUrl($client_id, redirect_uri, scopes, state);
    }
    
    /*
        The access_token required for DartifyBase methods are appended to your
        redirect_url after the user grants access to their account
                                                                    */
    
    // Returns the logged in user's Spotify profile
    void getUserProfile() {
        PrivateUserObject user = DartifyBase.getUser(accessToken);
        // Displays user's Display Name
        print(user.display_name);
    }
    
    // Returns the logged in user's currently playing track
    void getCurrentlyPlaying() {
        CurrentlyPlayingObject current = DartifyBase.getCurrentlyPlaying(accessToken);
        // Prints the currently playing track's title
        print(current.item.name);
    }
    
    // Returns an artist based on it's Spotify ID
    void getArtistForId() {
        FullArtistObject artist = DartifyBase.getArtistFromId(accessToken, artistId);
        // Prints artist's name
        print(artist.name);
    }
    
    // Returns an album based on it's Spotify ID
    void getAlbumForId() {
        FullAlbumObject album = DartifyBase.getAlbumFromId(accessToken, albumId);
        // Prints album's title
        print(album.title);
    }

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme

As of yet, dartify only supports Spotify's implicit grant flow, as either Spotify doesn't support CORS; or I'm not implementing it correctly. Because of this, no refresh token is provided, thus each token is only one use. It is good for 1 hour before it needs re-fetching.
