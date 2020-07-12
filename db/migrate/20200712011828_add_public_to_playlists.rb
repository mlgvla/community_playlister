class AddPublicToPlaylists < ActiveRecord::Migration[5.2]
  def change
    add_column :playlists, :public, :boolean, :default => false
  end
end
