class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.timestamps

      t.string :name
    end
  end
end
