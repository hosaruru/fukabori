class AddTextToCarryContents < ActiveRecord::Migration[6.1]
  def change
    add_column :carry_contents, :text, :integer
  end
end
