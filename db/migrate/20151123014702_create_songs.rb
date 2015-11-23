class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :song_name
      t.string :artist
      t.string :song_url

      t.timestamps

    end
  end
end
