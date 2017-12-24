class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.integer :localPoints
      t.integer :visitorPoints
      t.datetime :date

      t.timestamps
    end
  end
end
