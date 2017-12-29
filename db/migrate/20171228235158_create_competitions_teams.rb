class CreateCompetitionsTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :competitions_teams do |t|
      t.references :competition
      t.references :team
    end
  end
end
