class AddArticleTagsBelongsTo < ActiveRecord::Migration
  def change
    add_reference(:article_tags, :tags)
  end
end
