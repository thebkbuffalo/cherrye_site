class Image < ActiveRecord::Base
  has_attached_file :photo, styles: { medium: "300x300", thumb: "100x100" }, default_url: "http://www.placecage.com/400/500"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
