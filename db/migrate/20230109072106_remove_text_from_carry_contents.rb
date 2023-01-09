class RemoveTextFromCarryContents < ActiveRecord::Migration[6.1]
  def change
    remove_column :carry_contents, :text, :integer
  end
end
