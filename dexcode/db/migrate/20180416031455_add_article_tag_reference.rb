class AddArticleTagReference < ActiveRecord::Migration
  def change
    add_reference(:article_tags, :articles)
  end
end
