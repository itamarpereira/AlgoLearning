class AddDifficultyCollumIntoExercise < ActiveRecord::Migration[6.0]
  def change
    add_column :exercises, :difficulty, :string
  end
end
