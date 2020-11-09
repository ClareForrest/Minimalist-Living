class AddProblemRefToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_reference :solutions, :problem, null: false, foreign_key: true
  end
end
