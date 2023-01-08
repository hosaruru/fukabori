class CreateContents < ActiveRecord::Migration[6.1]
  def change
    create_table :contents do |t|
      t.integer :user_id, null: false
      t.string :content, null: false
      t.string :images
      t.timestamps
    end
  end
end
