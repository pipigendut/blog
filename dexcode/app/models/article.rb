# == Schema Information
#
# Table name: articles
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  content      :text
#  permalink    :string(255)
#  state        :string(255)      default("Draft")
#  posted_by_id :integer
#  published_at :datetime
#  created_at   :datetime
#  updated_at   :datetime
#  editstatus   :boolean          default(FALSE)
#

class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :permalink, use: [:finders, :slugged], slug_column: :permalink
  has_many :article_tags
  has_many :tags, through: :article_tags

  belongs_to :posted_by, class_name: "User", foreign_key: :posted_by_id

  def all_tags=(names)
	  names.split(",").each do |tag_name|
      article_tags.build(
        tag: Tag.where(name: tag_name.strip).first_or_create!
      )
		end
	end

  def all_tags
  	self.tags.map(&:name).join(",")
  end

  #Tag-based search
	def self.tagged_with(name)
		Tag.find_by_name!(name).articles
	end

end
