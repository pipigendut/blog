class AddDefaultState < ActiveRecord::Migration
  def change
    change_column_default(:articles, :state, 'draft')
  end
end
