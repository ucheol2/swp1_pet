class CreateSytlePosts < ActiveRecord::Migration
  def change
    create_table :sytle_posts do |t|
      t.string :title
      t.string :content
      t.string :img

      t.timestamps null: false
    end
  end
end
