class FukaboriContent < ApplicationRecord
  def change
    create_table :fukabori_contents do |t|
      t.integer :user_id, null: false
      t.string :fukabori_content, null: false
      t.string :images
      t.timestamps
    end
  end
end