class AddEditstatusToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :editstatus, :boolean, default: false
  end
end
