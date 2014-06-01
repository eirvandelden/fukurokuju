class CreateColours < ActiveRecord::Migration
  def change
    create_table :colours do |t|
        t.string :name
        t.string :hex_value

      t.timestamps
    end
  end
end
