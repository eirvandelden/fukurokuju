class Quote < ActiveRecord::Base
    belongs_to :colour
    belongs_to :user
    has_attached_file :audio
    validates_attachment :audio, content_type: { content_type: [ "audio/m4a", "audio/mpeg" ] }
    has_attached_file :background, styles: { thumb:"100x100#" }
    validates_attachment :background , content_type: { content_type: [ "image/png", "image/jpeg", "image/jpeg" ] }

#post: return an random quote, taking favorites into consideration
def self.random_quote
    return Quote.public.shuffle.first
end

#pre: current_user
#post: return an random quote, taking favorites into consideration
def self.random_quote_of_user( user )
    quotes = user.quotes.concat( Quote.favorites( user ) ).flatten #add duplicates to have higher chance to get picked

return quotes.shuffle.first
end


#pre: current_user
#post: return all quotes that were favorited
def self.favorites( user )
    return user.quotes.where( favorite: true )
end

def self.public
    return Quote.where( public: true )
end

#post: exists c in Colours : quote.c = c
def colour?
    return !self.colour.blank?
end

#Always return a colour. If there is no associated colour, return a white colour
alias_method :original_colour, :colour
def colour
    return self.original_colour || Colour.new( name: "White", hex_value: "#FFF" )
end

end
