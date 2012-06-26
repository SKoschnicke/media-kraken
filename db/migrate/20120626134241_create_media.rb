class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :file
      t.integer :user_id, :null => false, :default => nil

      t.timestamps
    end
  end
end
