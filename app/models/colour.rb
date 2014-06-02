class Colour < ActiveRecord::Base
    has_many :quotes

def white_on_black?
    return self.white_on_black
end
    
end
