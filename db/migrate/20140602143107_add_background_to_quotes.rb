class AddBackgroundToQuotes < ActiveRecord::Migration

def self.up
    add_attachment :quotes, :background
end

def self.down
    remove_attachment :quotes, :background
end
end
