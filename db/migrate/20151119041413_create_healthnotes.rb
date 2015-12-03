class CreateHealthnotes < ActiveRecord::Migration
  def change
    create_table :healthnotes do |t|
      t.integer :user_id
      t.integer :pet_id
      
      t.integer :order
      t.string :content
      t.string :date
      t.string :hospital
      t.string :etc

      t.timestamps null: false
    end
  end
end
