class FukaboriText < ApplicationRecord
  def change
    create_table :fukabori_texts do |t|
      t.text :text, null: false
      t.integer :user_id, null: false
      t.integer :fukabori_content_id, null: false
      t.string :images
      t.timestamps
    end
  end
end
