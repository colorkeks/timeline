class CreateTimeItems < ActiveRecord::Migration
  def change
    create_table :time_items do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date
      t.integer :high_threshold
      t.integer :importance
      t.integer :timeline_id

      t.timestamps
    end
  end
end
