class AddFotoToCompetitions < ActiveRecord::Migration[5.1]
  def change
    add_column :competitions, :foto, :string
  end
end
