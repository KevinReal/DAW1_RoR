class CreateTeamStats < ActiveRecord::Migration[5.1]
  def change
    create_table :team_stats do |t|
      t.string :name
      t.integer :value
			t.integer :team_id

      t.timestamps
    end
  end
end
