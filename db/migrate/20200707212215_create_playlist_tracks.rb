class CreatePlaylistTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :playlist_tracks do |t|
      t.belongs_to :track, foreign_key: true
      t.belongs_to :playlist, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.string :note

      t.timestamps
    end
  end
end
