class AddUserIdToCompetitions < ActiveRecord::Migration[5.1]
  def change
		add_column :competitions, :user_id, :integer
  end
end
