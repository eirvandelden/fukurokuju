class AddPublicBooleanToColours < ActiveRecord::Migration
    def change
        add_column :colours, :public, :boolean, default: true
    end
end
