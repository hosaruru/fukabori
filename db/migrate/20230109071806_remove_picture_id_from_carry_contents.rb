class RemovePictureIdFromCarryContents < ActiveRecord::Migration[6.1]
  def change
    remove_column :carry_contents, :picture_id, :integer
  end
end
