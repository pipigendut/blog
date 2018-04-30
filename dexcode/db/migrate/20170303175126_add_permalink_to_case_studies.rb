class AddPermalinkToCaseStudies < ActiveRecord::Migration
  def change
    add_column :case_studies, :permalink, :string, null: false, after: :id
  end
end
