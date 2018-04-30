# == Schema Information
#
# Table name: case_study_images
#
#  id            :integer          not null, primary key
#  case_study_id :integer
#  file          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class CaseStudyImage < ActiveRecord::Base
  mount_uploader :file, PictureUploader
  belongs_to :case_study
end
