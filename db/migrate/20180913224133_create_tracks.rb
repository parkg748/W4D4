class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.integer :album_id
      t.integer :band_id
      t.string :title, null: false
      t.integer :ord, null: false
      t.text :lyrics
      t.string :type_of_track, null: false
    end
    add_index :tracks, :album_id
    add_index :tracks, :band_id
  end
end
