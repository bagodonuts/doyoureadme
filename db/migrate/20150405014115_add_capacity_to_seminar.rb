class AddCapacityToSeminar < ActiveRecord::Migration
  def change
    add_column :seminars, :capacity, :integer
  end
end
