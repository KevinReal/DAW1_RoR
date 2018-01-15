class AddFotoToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :foto, :string
  end
end
