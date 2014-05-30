class Quote < ActiveRecord::Base

def self.random_quote
    return Quote.order("RANDOM()").first #return any quote
end

end
