class AddPictureIdToCarryContents < ActiveRecord::Migration[6.1]
  def change
    add_column :carry_contents, :picture_id, :integer
  end
end
