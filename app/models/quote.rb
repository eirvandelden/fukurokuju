class Quote < ActiveRecord::Base
    belongs_to :colour
    
def self.random_quote
    return Quote.order("RANDOM()").first #return any quote
end

def colour?
    return !self.colour.blank?
end

#Always return a colour. If there is no associated colour, return a white colour
alias_method :original_colour, :colour
def colour
    return self.original_colour || Colour.new( name: "White", hex_value: "#FFF" )
end

end
