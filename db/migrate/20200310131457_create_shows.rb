class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.string :show_name
      t.string :show_timing
      t.timestamps
    end
  end
end
