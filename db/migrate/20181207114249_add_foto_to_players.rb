class AddFotoToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :foto, :string
  end
end
