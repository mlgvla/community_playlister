class Playlist < ApplicationRecord
    has_many :playlist_tracks
    has_many :tracks, through: :playlist_tracks
    has_many :comments
    belongs_to :user
end
