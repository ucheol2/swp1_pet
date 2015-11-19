class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.integer :user_id
      
      t.string :name
      t.integer :age
      t.string :gender
      t.string :img
      t.text :about

      t.timestamps null: false
    end
  end
end
