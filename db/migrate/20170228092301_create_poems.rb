class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.text :title
      t.text :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
