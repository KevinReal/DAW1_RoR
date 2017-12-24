class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :author
      t.datetime :published_at
      t.text :body

      t.timestamps
    end
  end
end
