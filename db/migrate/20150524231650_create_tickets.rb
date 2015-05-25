class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :movie_id
      t.integer :show_time_id
      t.integer :quantity
      t.timestamps
    end
  end
end
