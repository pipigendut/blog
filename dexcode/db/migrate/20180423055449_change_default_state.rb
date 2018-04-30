class ChangeDefaultState < ActiveRecord::Migration
  def change
    change_column_default(:articles, :state, 'Draft')
  end
end
