# == Schema Information
#
# Table name: article_tags
#
#  id         :integer          not null, primary key
#  article_id :integer
#  tag_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ArticleTag < ActiveRecord::Base
  belongs_to :article
  belongs_to :tag
end
