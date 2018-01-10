class AddJourneyToResults < ActiveRecord::Migration[5.1]
  def change
		add_column :results, :journey, :integer
  end
end
