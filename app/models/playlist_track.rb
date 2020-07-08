class PlaylistTrack < ApplicationRecord
    belongs_to :track
    belongs_to :playlist
    belongs_to :user
end
