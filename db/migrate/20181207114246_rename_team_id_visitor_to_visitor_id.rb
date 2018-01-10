class RenameTeamIdVisitorToVisitorId < ActiveRecord::Migration[5.1]
  def change
		rename_column :results, :team_id_visitor, :visitor_id
  end
end
