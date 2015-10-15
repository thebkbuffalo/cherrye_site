class CreatePlaywrights < ActiveRecord::Migration
  def change
    create_table :playwrights do |t|
      t.string :happening_now_title
      t.text :happening_now_description
      t.string :coming_up_title
      t.text :coming_up_description
      t.text :press

      t.timestamps null: false
    end
  end
end
