class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :url
      t.string :aritst
      t.string :song_name

      t.timestamps

    end
  end
end
