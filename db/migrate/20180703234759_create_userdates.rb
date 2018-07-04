class CreateUserdates < ActiveRecord::Migration[5.0]
  def change
    create_table :userdates do |t|
      t.integer :user_id
      t.datetime :date

      t.timestamps
    end
    add_index :userdates, :user_id
  end
end
