class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.string :title
      t.string :caption
      t.string :link_to_buy

      t.timestamps null: false
    end
  end
end
