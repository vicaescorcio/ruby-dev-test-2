class DeleteIndexFromAlbums < ActiveRecord::Migration[5.2]
  def up
    remove_index :albums, name: "index_albums_on_player_id"
  end
  def down 
    add_index :albums, [:player_id], name:"index_albums_on_player_id"
  end
end
