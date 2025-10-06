class RenameTypeToCategory < ActiveRecord::Migration[8.0]
  def change
    rename_column :facilities, :type, :category
  end
end
