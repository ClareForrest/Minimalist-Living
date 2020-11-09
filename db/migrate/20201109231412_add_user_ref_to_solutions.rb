class AddUserRefToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_reference :solutions, :user, null: false, foreign_key: true
  end
end
