class CreateTexts < ActiveRecord::Migration[6.1]
  def change
    create_table :texts do |t|
      t.integer :user_id, null: false
      t.integer :picture_id, null: false
      t.text :text, null: false
      t.timestamps
    end
  end
end
