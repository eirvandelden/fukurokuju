class AddUsersToColours < ActiveRecord::Migration
  def change
      add_column :colours, :user_id, :integer
      add_index  :colours, :user_id
  end
end
