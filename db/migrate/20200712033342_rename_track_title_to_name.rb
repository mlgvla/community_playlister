class RenameTrackTitleToName < ActiveRecord::Migration[5.2]
  def change
    rename_column :tracks, :title, :name
  end
end
