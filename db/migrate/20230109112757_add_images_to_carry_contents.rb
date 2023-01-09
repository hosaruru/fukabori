class AddImagesToCarryContents < ActiveRecord::Migration[6.1]
  def change
    add_column :carry_contents, :images, :string
  end
end
