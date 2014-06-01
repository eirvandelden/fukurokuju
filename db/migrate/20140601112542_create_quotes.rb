class CreateQuotes < ActiveRecord::Migration
  def change
      create_table :quotes do |t|

        t.text :quote
        t.string :author
        t.boolean :favorite, default: false

      t.timestamps
    end
  end
end
