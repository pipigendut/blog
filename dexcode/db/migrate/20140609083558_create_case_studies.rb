class CreateCaseStudies < ActiveRecord::Migration
  def change
    create_table :case_studies do |t|
      t.string :client
      t.string :overview
      t.text   :result
      t.text   :process
      t.timestamps
    end
  end
end
