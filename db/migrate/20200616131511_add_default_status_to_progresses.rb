class AddDefaultStatusToProgresses < ActiveRecord::Migration[6.0]
  def change
    change_column_default :progresses, :status, "Not Started"
  end
end
