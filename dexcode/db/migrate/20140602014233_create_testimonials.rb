class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :position
      t.text :body
      t.timestamps
    end
  end
end
