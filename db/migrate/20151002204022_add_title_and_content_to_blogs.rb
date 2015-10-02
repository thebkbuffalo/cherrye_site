class AddTitleAndContentToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :title, :string
    add_column :blogs, :content, :text
  end
end
