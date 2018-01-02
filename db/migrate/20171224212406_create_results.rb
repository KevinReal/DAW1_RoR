class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.integer :localPoints
      t.integer :visitorPoints
      t.datetime :date
			t.integer "competition_id"
    	t.integer "team_id_local"
    	t.integer "team_id_visitor"

      t.timestamps
    end
  end
end
