class QuoteController < ApplicationController

def home
    @quote = Quote.random_quote
end

def index
    @quotes = Quote.all
end

end
