class AddPriceToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_column :solutions, :price, :float
  end
end
