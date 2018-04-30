class DeleteTableArticleTags < ActiveRecord::Migration
  def up
    drop_table :article_tags
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
