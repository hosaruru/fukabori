class AddBasePicToPictures < ActiveRecord::Migration[6.1]
  def change
    add_column :pictures, :base_pic, :string
  end
end
