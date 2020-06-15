class RemoveCodeFromTableCourse < ActiveRecord::Migration[6.0]
  def change
    remove_column :courses, :code
  end
end
