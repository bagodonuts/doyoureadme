class AddHostToSeminars < ActiveRecord::Migration
  def change
    add_column :seminars, :host_id, :integer
    add_index :seminars, :host_id
  end
end
