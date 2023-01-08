class CreateTexts < ActiveRecord::Migration[6.1]
  def change
    create_table :texts do |t|
      t.text :text, null: false
      t.integer :user_id, null: false
      t.integer :content_id, null: false
      t.string :images
      t.timestamps
    end
  end
end
