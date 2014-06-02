class Quote < ActiveRecord::Base
    belongs_to :colour
    
def self.random_quote
    quotes = Quote.all
    quotes.concat Quote.favorites #add duplicates to have higher chance to get picked
    return quotes.shuffle.first #return any quote
end

def self.favorites
    return Quote.where( favorite: true )
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
