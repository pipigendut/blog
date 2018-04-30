class CreateCaseStudyImages < ActiveRecord::Migration
  def change
    create_table :case_study_images do |t|
      t.integer :case_study_id
      t.string  :file
      t.timestamps
    end
  end
end
