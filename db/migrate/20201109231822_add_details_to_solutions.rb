class AddDetailsToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_column :solutions, :title, :string
    add_column :solutions, :body, :text
  end
end
