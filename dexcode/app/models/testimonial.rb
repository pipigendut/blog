# == Schema Information
#
# Table name: testimonials
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  position   :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class Testimonial < ActiveRecord::Base
end
