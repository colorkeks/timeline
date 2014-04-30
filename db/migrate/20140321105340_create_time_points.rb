class CreateTimePoints < ActiveRecord::Migration
  def change
    create_table :time_points do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.integer :high_threshold
      t.integer :importance
      t.string :image
      t.integer :timeline_id

      t.timestamps
    end
  end
end
