class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.string :title
      t.date :focus_date
      t.integer :initial_zoom

      t.timestamps
    end
  end
end
