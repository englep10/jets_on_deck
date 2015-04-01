class CreateJets < ActiveRecord::Migration
  def change
    create_table :jets do |t|
      t.string :title	
      t.string :make
      t.string :plane
      t.string :serial_number
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end