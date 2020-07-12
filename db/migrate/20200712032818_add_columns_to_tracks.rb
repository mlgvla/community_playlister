class AddColumnsToTracks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tracks, :artist, foreign_key: true
    add_reference :tracks, :album, foreign_key: true
    add_column :tracks, :duration, :integer
    add_column :tracks, :preview_url, :string
  end
end
