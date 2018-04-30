class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :permalink
      t.string :state
      t.integer :posted_by_id
      t.datetime :published_at

      t.timestamps
    end
  end
end
