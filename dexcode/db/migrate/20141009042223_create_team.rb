class CreateTeam < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :position
      t.text :description

      t.timestamps
    end
  end
end
