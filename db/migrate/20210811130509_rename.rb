class Rename < ActiveRecord::Migration[5.2]
  def change
    rename_column :pictures, :image, :picture
   rename_column :users, :image, :picture
  end
end
