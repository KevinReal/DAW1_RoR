class CreatePlayerStats < ActiveRecord::Migration[5.1]
  def change
    create_table :player_stats do |t|
      t.string :name
      t.integer :value
			t.integer "player_id"

      t.timestamps
    end
  end
end
