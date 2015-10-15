class Playwright < ActiveRecord::Base
  has_attached_file :up_coming_prod_still, styles: { medium: "300x300", thumb: "100x100" }, default_url: "http://zenmonkeystudios.com/wp-content/uploads/2015/09/tiny-rick-school-mockup02.jpg"
  validates_attachment_content_type :up_coming_prod_still, content_type: /\Aimage\/.*\Z/
  has_attached_file :happening_now_prod_still, styles: { medium: "300x300", thumb: "100x100" }, default_url: "http://zenmonkeystudios.com/wp-content/uploads/2015/09/tiny-rick-school-mockup02.jpg"
  validates_attachment_content_type :happening_now_prod_still, content_type: /\Aimage\/.*\Z/
end
