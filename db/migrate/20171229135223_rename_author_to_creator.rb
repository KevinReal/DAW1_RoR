class RenameAuthorToCreator < ActiveRecord::Migration[5.1]
  def change
		rename_column :comments, :author, :creator
  end
end
