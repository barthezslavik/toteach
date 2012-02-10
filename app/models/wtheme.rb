class Wtheme < ActiveRecord::Base

  belongs_to :wcourse

  scope :by_course, :order => "course_id"

end
