class CreateParties < ActiveRecord::Migration[7.0]
  def change
    create_table :parties do |t|
      t.string :title
      t.string :embeded_link
      t.integer :like
      t.integer :dislike
      t.integer :views
      t.string :timestamps

      t.timestamps
    end
  end
end
