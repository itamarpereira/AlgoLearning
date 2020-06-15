class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.text :code
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
