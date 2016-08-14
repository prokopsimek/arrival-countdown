class RenameImagesToArrImages < ActiveRecord::Migration
  def change
    rename_table :images, :arr_images
  end
end
