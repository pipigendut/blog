# == Schema Information
#
# Table name: case_studies
#
#  id            :integer          not null, primary key
#  permalink     :string(255)      not null
#  content       :text
#  client        :string(255)
#  overview      :string(255)
#  result        :text
#  process       :text
#  created_at    :datetime
#  updated_at    :datetime
#  overview_text :text
#  link          :string(255)
#

class CaseStudy < ActiveRecord::Base
  mount_uploader :overview, PictureUploader

  has_many :case_study_images
end
