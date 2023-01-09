class AddTextIdToCarryContents < ActiveRecord::Migration[6.1]
  def change
    add_column :carry_contents, :text_id, :integer
  end
end
