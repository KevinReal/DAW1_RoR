class RenameTeamIdLocalToLocalId < ActiveRecord::Migration[5.1]
  def change
		rename_column :results, :team_id_local, :local_id
  end
end
