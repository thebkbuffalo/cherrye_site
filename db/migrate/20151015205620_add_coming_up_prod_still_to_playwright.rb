class AddComingUpProdStillToPlaywright < ActiveRecord::Migration
  def up
    add_attachment :playwrights, :up_coming_prod_still
  end
  def down
    remove_attachment :playwrights, :up_coming_prod_still
  end
end
