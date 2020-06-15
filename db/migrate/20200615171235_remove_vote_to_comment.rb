class RemoveVoteToComment < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :vote, :integer
  end
end
