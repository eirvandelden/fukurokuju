class AddColourIdToQuotes < ActiveRecord::Migration
  def change
      add_column :quotes, :colour_id, :integer
      add_index  :quotes, :colour_id
  end
end
