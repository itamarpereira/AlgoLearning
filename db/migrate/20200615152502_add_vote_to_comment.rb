class AddVoteToComment < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :vote, :integer
  end
end
