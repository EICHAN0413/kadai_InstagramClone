class Rename < ActiveRecord::Migration[5.2]
  def change
    rename_column :pictures, :image, :image_topic
   rename_column :users, :image, :image_topic
  end
end
