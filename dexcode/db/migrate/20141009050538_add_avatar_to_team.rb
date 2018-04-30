class AddAvatarToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :avatar, :string
  end
end
