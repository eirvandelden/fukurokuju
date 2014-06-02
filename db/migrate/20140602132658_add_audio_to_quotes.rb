class AddAudioToQuotes < ActiveRecord::Migration
    def self.up
        add_attachment :quotes, :audio
    end

    def self.down
        remove_attachment :quotes, :audio
    end
end
