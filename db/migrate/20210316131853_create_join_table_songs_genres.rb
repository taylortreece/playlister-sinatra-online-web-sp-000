class CreateJoinTableSongsGenres < ActiveRecord::Migration[5.2]
  def change
    create_join_table :songs, :genres, table_name: :song_genres
  end
end
