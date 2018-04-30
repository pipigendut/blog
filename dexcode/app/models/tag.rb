# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Tag < ActiveRecord::Base
  has_many :article_tags
  has_many :articles, through: :article_tags

  def self.counts
    self.select("name, count(article_tags.tag_id) as count").joins(:article_tags).group("article_tags.tag_id")
  end

end
