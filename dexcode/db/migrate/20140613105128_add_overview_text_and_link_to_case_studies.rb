class AddOverviewTextAndLinkToCaseStudies < ActiveRecord::Migration
  def change
    add_column :case_studies, :overview_text, :text
    add_column :case_studies, :link, :string
  end
end
