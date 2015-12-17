class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :name
      t.string :title
      t.text :content
      t.integer :like, default: 0

      t.timestamps null: false
    end
  end
end
