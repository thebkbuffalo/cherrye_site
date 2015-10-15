class Performance < ActiveRecord::Base
  has_attached_file :perf_photo, styles: { medium: "300x300", thumb: "100x100" }, default_url: "http://zenmonkeystudios.com/wp-content/uploads/2015/09/tiny-rick-school-mockup02.jpg"
  validates_attachment_content_type :perf_photo, content_type: /\Aimage\/.*\Z/
end
