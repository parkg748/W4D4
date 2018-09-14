class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.integer :record_id
      t.string :title, null: false
      t.integer :year, null: false
      t.string :type_of_album
    end
    add_index :albums, :record_id
  end
end
