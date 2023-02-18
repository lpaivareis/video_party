class CreateParties < ActiveRecord::Migration[7.0]
  def change
    create_table :parties do |t|
      t.string :title
      t.string :embeded_link
      t.integer :views, default: 0
      t.string :timestamps

      t.timestamps
    end
  end
end
