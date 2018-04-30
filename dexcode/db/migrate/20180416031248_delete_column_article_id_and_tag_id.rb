class DeleteColumnArticleIdAndTagId < ActiveRecord::Migration
  def change
    remove_column(:article_tags, :article_id)
    remove_column(:article_tags, :tag_id)
    remove_column(:article_tags, :articles_id)
  end
end
