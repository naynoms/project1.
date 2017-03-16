class Favourites < ActiveRecord::Migration
  def change
    create_table :favourites do |t|
      t.integer :user_id
      t.integer :poem_id

      t.timestamps null: false
    end
  end
end
