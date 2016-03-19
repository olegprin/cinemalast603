class CreateTyys < ActiveRecord::Migration
  def change
    create_table :tyys do |t|
      t.string :try
      t.string :ewqw

      t.timestamps null: false
    end
  end
end
