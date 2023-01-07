class CreateFukaboriTexts < ActiveRecord::Migration[6.1]
  def change
    create_table :fukabori_texts do |t|

      t.timestamps
    end
  end
end
