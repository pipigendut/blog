class AddForeignKeyToArticles < ActiveRecord::Migration
  def change
    add_foreign_key :articles, :users, column: :posted_by_id, primary_key: :id
  end
end
