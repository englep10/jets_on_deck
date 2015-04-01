class AddAgeToJets < ActiveRecord::Migration
  def change
    add_column :jets, :age, :string
  end
end
