class User < ApplicationRecord
    has_many :playlist_tracks
    has_many :playlists, through: :playlist_tracks
    has_many :comments
end
