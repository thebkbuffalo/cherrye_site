class AddPhotoUploadToPerformances < ActiveRecord::Migration
  def up
    add_attachment :performances, :perf_photo
  end
  def down
    remove_attachment :performances, :perf_photo
  end
end
