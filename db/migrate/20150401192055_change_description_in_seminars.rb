class ChangeDescriptionInSeminars < ActiveRecord::Migration
  def change
    change_column :seminars, :description, :text
  end
end
