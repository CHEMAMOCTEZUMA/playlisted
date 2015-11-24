class AddImageToIcons < ActiveRecord::Migration
  def change
    add_column :icons, :image, :string
  end
end
