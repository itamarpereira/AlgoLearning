class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.text :lecture
      t.text :code
      t.text :video
      t.string :category
      t.string :difficulty

      t.timestamps
    end
  end
end
