class CreateShowTimes < ActiveRecord::Migration
  def change
    create_table :show_times do |t|
      t.integer :movie_id
      t.time :time
      t.timestamps
    end
  end
end
