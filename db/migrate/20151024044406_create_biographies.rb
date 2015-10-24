class CreateBiographies < ActiveRecord::Migration
  def change
    create_table :biographies do |t|
      t.text :bio
      t.text :press

      t.timestamps null: false
    end
  end
end
