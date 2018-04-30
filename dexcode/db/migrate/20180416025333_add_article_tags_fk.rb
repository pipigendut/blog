class AddArticleTagsFk < ActiveRecord::Migration
  def change
    add_belongs_to :article_tags, :articles, column: :article_id, primary_key: :id
  end
end
