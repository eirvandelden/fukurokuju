class AddPublicBooleanToQuotes < ActiveRecord::Migration
  def change
        add_column :quotes, :public, :boolean, default: true
  end
end
