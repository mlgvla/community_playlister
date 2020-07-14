Next Sprint:

Study Spotify for layout and flow - sketch a wireframe
Implement UserTracks Model
Display UserTracks on User Show Page

PlaylistTrack features
    - added by (use user_id)
    - artist/album
    - sound snippet or link to embeded track for Spotify users - just get track id.
    - tiny album art?
    - all of this stuff is available through the track feature
    - added_by attribute to PlaylistTrack.  Search all tracks added by particular user in present playlist or across all community playlists

- Search page for Spotify searches. Search action in Track Controller? Search Controller?
- Sort playlist tracks by artist or alphabetically or by popularity (dropdown for filters)
- Choose how many hits you want returned (eg. 10, 25, 50, 100)
- Community Playlists are always public.  A private playlist is for user view only.
- Description field for Community playlists to guide contributions?
- Add public/private private attribute to Playlists.

- Filter PlaylistTracks by user_id - both present Playlist and across all public Playlists.
- Filter Comments by user_id

- theme attribute?

- UserTrack Model?

- allow user to update profile first and last name?

- User authorizations!!!!!!!! (logged in and current_user)

- A user has_many playlist_tracks, as owner (delete priveleges only by contributor and owner of Playlist)

- Hardcoded Track artist and album for now - convert to artist_id and album_id after those tables are constructed

- create Artist and Album models

- whether it comes from the user's tracks or from a search, I can use the same form, which will include a dropdown box to add a track to a playlist.  Playlists are in dropdown box

- a user should only see the public playlists and their own private ones, not the private ones of other users

- Navbar - Playlists should dropdown to All (Community) Playlists and My Playlists

- Make sure Playlists table is populated with user_ids! 

- on Library page - highlight new Public Playlists

- handle public private with a check box ("Make Public")

- replace PLaylist_Track with Like instead of Note - increment likes everytime someone likes a track and then be able to sort tracks by number of likes?

- present Track (by song) finds in order of popularity

- track searches by Artist, Album, Song or general

- make sure you see your private playlists even if they are public - add some display text to indiciate to you which ones of your playlists you've elected to make public or use a filter dropdown!