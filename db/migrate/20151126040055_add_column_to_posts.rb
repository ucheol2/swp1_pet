class AddColumnToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :img, :string
  end
end
