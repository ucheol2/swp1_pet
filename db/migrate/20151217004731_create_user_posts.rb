class CreateUserPosts < ActiveRecord::Migration
  def change
    create_table :user_posts do |t|
      
      t.integer :user_id
      t.integer :post_id
      
      t.boolean :owned
      t.boolean :liked, default: false

      t.timestamps null: false
    end
  end
end
