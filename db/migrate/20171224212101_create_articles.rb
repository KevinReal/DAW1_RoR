class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :author
      t.datetime :published_at
      t.text :body
      t.string :title
      t.string :subtitle
			t.integer "team_id"
    	t.integer "competition_id"
    	t.integer "result_id"
   	 	t.string "foto"
    	t.integer "user_id"

      t.timestamps
    end
  end
end
