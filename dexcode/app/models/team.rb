# == Schema Information
#
# Table name: teams
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  position    :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  avatar      :string(255)
#

class Team < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  # attr_accessible :avatar
end
