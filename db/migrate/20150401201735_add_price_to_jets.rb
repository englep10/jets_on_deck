class AddPriceToJets < ActiveRecord::Migration
  def change
    add_column :jets, :price, :string
  end
end
