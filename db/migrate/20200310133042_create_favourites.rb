class CreateFavourites < ActiveRecord::Migration[5.1]
  def change
    create_table :favourites do |t|
      t.references :show, foreign_key: true
      t.references :user

      t.timestamps
    end
  end
end
