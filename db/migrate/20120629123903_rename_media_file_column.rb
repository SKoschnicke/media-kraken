class RenameMediaFileColumn < ActiveRecord::Migration
  def up
    rename_column :media, :file, :filename
  end

  def down
    rename_column :media, :filename, :file
  end
end
