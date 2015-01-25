class CreateSeminars < ActiveRecord::Migration
  def change
    create_table :seminars do |t|
      t.string :title
      t.string :description
      t.string :tutor
      t.string :conference_url
      t.datetime :starts_at

      t.timestamps
    end
  end
end
