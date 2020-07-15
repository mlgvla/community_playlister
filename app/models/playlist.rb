class Playlist < ApplicationRecord
    has_many :playlist_tracks, dependent: :destroy
    has_many :tracks, through: :playlist_tracks
    has_many :comments
    belongs_to :user

    #add validations for presence of name and user_id

    #scope - alphabetize, current length of playlist?, 
    scope :public_playlists, -> { where( public: true )}
end
