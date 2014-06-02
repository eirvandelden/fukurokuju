class AddWhiteOnBlackToColours < ActiveRecord::Migration
  def change
      add_column :colours, :white_on_black, :boolean
  end
end
