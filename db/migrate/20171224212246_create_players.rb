class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :number
			t.integer "team_id"
      t.integer "user_id"

      t.timestamps
    end
  end
end
