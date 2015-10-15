class AddTitleAndCaptionToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :title, :string
    add_column :videos, :caption, :string
    add_column :videos, :url, :string
  end
end
