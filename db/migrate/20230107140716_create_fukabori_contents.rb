class CreateFukaboriContents < ActiveRecord::Migration[6.1]
  def change
    create_table :fukabori_contents do |t|

      t.timestamps
    end
  end
end
