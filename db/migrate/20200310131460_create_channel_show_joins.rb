class CreateChannelShowJoins < ActiveRecord::Migration[5.1]
  def change
    create_table :channels_shows, id: false do |t|
      t.belongs_to :channel
      t.belongs_to :show
    end
  end
end