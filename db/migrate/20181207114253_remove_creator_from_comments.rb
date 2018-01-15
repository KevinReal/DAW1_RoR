class RemoveCreatorFromComments < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :creator, :string
  end
end
