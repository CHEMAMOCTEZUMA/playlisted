class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.string :icon_id
      t.string :song_id

      t.timestamps

    end
  end
end
