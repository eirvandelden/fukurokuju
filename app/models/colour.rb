class Colour < ActiveRecord::Base
    has_many :quotes
    belongs_to :user

def white_on_black?
    return self.white_on_black
end

def self.with_access( user )
    return user.colours.concat( self.public ).flatten
end

def self.public
    return Colour.where( public: true )
end

end
