class AddHappeningNowProdStillToPlaywright < ActiveRecord::Migration
  def up
    add_attachment :playwrights, :happening_now_prod_still
  end
  def down
    remove_attachment :playwrights, :happening_now_prod_still
  end
end
